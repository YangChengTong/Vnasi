package com.vnasi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vnasi.pojo.VnasiUser;
import com.vnasi.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserService service;
	
	@RequestMapping("/register")
	public String register(VnasiUser user,HttpServletRequest request,HttpServletResponse response) throws Exception{
		//response.setContentType("text/html;charset=utf-8");
		//PrintWriter out = response.getWriter();
		String chengshi =request.getParameter("chengshi")+request.getParameter("diqu")+request.getParameter("shou");
		user.setAddress(chengshi);
		user.setLogin(0);
		user.setStatus(2);
		int register = service.register(user);
		if(register>0){
			//out.print("<script>alert('注册成功！');location.href={pageContext.request.contextPath}/foreground/login</script>");
			request.getSession().setAttribute("userId", user.getUserId());
			return "foreground/login";
		}
		return "foreground/register";
	}
	
	@RequestMapping("/login")
	public String login(VnasiUser user,HttpServletRequest request,HttpServletResponse response) throws Exception{ 
		// 获取当前的 Subject. 调用 SecurityUtils.getSubject();
        Subject currentUser = SecurityUtils.getSubject();
		String input = request.getParameter("checkcode");   							//输入的验证码
		String generate = (String) request.getSession().getAttribute("checkcode");  	//生成的验证码
		try {
			VnasiUser user2 = service.login(user);
			
			if (!currentUser.isAuthenticated()) {
				// 把用户名和密码封装为 UsernamePasswordToken 对象
				UsernamePasswordToken token = new UsernamePasswordToken(user2.getUserId(), user2.getPassword());
				//实际开发中是一个记住我的单选，当选中时设置setRememberMe记住我为true
				token.setRememberMe(true);
				try {
					System.out.println("tokenhasCode:	"+token.hashCode());
					// 执行登录. 
					currentUser.login(token);
				}
				// 所有认证时异常的父类. 
				catch (AuthenticationException ae) {
					System.out.println("登录失败: " + ae.getMessage());
				}
			}
			if(input.equalsIgnoreCase(generate)){
				if(null!=user2){
					request.getSession().setAttribute("currentUser", user2);
					if(user2.getStatus()==2){//如果是管理员就去到后台
						return "/manage/index";
					}else{//普通用户来到首页
						return "/foreground/index";
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/foreground/login";
	}
}
