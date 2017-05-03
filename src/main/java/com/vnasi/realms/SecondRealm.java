package com.vnasi.realms;



import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.util.ByteSource;

/**
 * 获取安全数据（如用户、角色、权限）比较以确定用户身份是否合法
 * 一般继承 AuthorizingRealm（授权）
 * 继承了AuthenticatingRealm（即身份验证）也间接继承了CachingRealm（带有缓存实现）
 * @author Administrator
 *
 */
public class SecondRealm extends AuthenticatingRealm {

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("【SecondRealm】");
		//1.将AuthenticationToken强制转换为UsernamePasswordToken从而得到userName
				UsernamePasswordToken upToken = (UsernamePasswordToken)token;
				
				//2.根据转换过来的UsernamePasswordToken对象得到userName
				String username = upToken.getUsername();
				
				//3.根据userName从数据库查出来的对应的记录
				System.out.println("数据对应的username："+username);
				
				//4.当用户不存在时
				if("quanjun".equals(username)){
					throw new UnknownAccountException("该用户不存在!");
				}
				//5.当用户被锁定时
				if("quanyong".equals(username)){
					throw new LockedAccountException("该用户已被锁定！");
				}
				
				//6.模拟数据
				Object principal = username;	//6.1根据userName从数据库查出来的对应的记录 userName
				Object credentials = null;		//6.2根据userName从数据库查出来的对应的记录 passWord
				
				//credentials密码是通过用户名和密码进行盐值加密得出的
				if("admin".equals(username)){
					credentials = "49d9fbf007fd95343492e607aa34455eeb062b26";
				}else if("user".equals(username)){
					credentials = "16962ca194c20f8a1616c521318c37de8efeb537";
				}
				//6.3盐值加密
				ByteSource credentialsSalt = ByteSource.Util.bytes(username);
				
				//6.4当前 realm 对象的 name. 调用父类的 getName() 
				String realm = getName();
				
				//7.通过这个简单验证对象得到验证信息
				SimpleAuthenticationInfo info = null; //new SimpleAuthenticationInfo(principal, credentials, realmName);
				info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt, realm);
				return info;
			}
			
			public static void main(String[] args) {
				String hashAlgorithmName = "SHA1";
				Object credentials = "123";
				Object salt = ByteSource.Util.bytes("user");
				int hashIterations = 1024;
				
				Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
				System.out.println(result);
			}
		}
