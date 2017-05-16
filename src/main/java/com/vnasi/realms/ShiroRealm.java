package com.vnasi.realms;

import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.vnasi.pojo.VnasiUser;
import com.vnasi.service.UserService;

public class ShiroRealm extends AuthorizingRealm {

	@Autowired
	private UserService service;

	// 认证回调函数
		@Override
		protected AuthenticationInfo doGetAuthenticationInfo(
				AuthenticationToken token) throws AuthenticationException {
			//1.将AuthenticationToken强制转换为UsernamePasswordToken从而得到userName
			UsernamePasswordToken upToken = (UsernamePasswordToken)token;
			
			//2.根据转换过来的UsernamePasswordToken对象得到userName
			String username = upToken.getUsername();
			
			//3.根据userName从数据库查出来的对应的记录
			VnasiUser user = service.findUserByUserName(username);
			Object principal = user.getUserId();			
			Object credentials = user.getPassword();
			
			//4.当用户不存在时
			if(!principal.equals(username)){
				throw new UnknownAccountException("该用户不存在!");
			}
			//5.当用户被锁定时
			if(!principal.equals(username)){
				throw new LockedAccountException("该用户已被锁定！");
			}
			
			//MD5盐值加密后的密码
			String hashAlgorithmName = "MD5";
			Object salt = ByteSource.Util.bytes(principal);
			int hashIterations = 1024;
			
			Object result = new SimpleHash(hashAlgorithmName,credentials,salt,hashIterations);
			
			//credentials密码是通过用户名和密码进行盐值加密得出的
			if(principal.equals(username)){
				credentials = result;
			}
			//6.3 盐值加密
			ByteSource credentialsSalt = ByteSource.Util.bytes(username);
			
			//6.4当前 realm 对象的 name. 调用父类的 getName() 
			String realm = getName();
			
			//7.通过这个简单验证对象得到验证信息
			SimpleAuthenticationInfo info = null; //new SimpleAuthenticationInfo(principal, credentials, realmName);
			info = new SimpleAuthenticationInfo(principal, credentials,credentialsSalt,realm);
			return info;
		}
	
	// 授权回调函数
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 1. 从 PrincipalCollection 中来获取登录用户的信息
		String userName = (String) principals.getPrimaryPrincipal();

		// 2. 利用登录的用户的信息来获取当前用户的角色或权限
		VnasiUser user = service.findUserByUserName(userName);
		// 2.1
		// 无论是普通user角色还是amdin系统角色都给上一个user（1）用户角色，要是admin就给普通用户再加上一个admin（2）角色
		Set<String> roles = new HashSet<String>();
		roles.add("user");
		if (user.getUserId().equals(userName)) {
			roles.add("admin");
		}

		// 3. 创建 SimpleAuthorizationInfo, 并设置其 reles 属性.
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);

		// 4. 返回 SimpleAuthorizationInfo 对象 .
		return info;
	}

}
