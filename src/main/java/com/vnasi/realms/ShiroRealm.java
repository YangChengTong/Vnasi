package com.vnasi.realms;



import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.vnasi.pojo.VnasiUser;
import com.vnasi.service.UserService;

public class ShiroRealm extends AuthorizingRealm {

	@Autowired
	private UserService service;
	
	//授权时被shiro回调
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//1. 从 PrincipalCollection 中来获取登录用户的信息
		String userName= (String)principals.getPrimaryPrincipal();
		
		//2. 利用登录的用户的信息来获取当前用户的角色或权限(可能需要查询数据库)
		VnasiUser user = service.findUserByUserName(userName);
		//2.1 无论是普通user角色还是amdin系统角色都给上一个user（1）用户角色，要是admin就给普通用户再加上一个admin（2）角色
		Set<String> roles = new HashSet<String>();
		roles.add("1");
		if(user.getUserId().equals(userName)){
			roles.add("2");
		}
		
		//3. 创建 SimpleAuthorizationInfo, 并设置其 reles 属性.
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
		
		//4. 返回 SimpleAuthorizationInfo 对象   . 
		return info;
	}

	//身份验证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken paramAuthenticationToken)
			throws AuthenticationException {
		// TODO Auto-generated method stub
		return null;
	}
}
