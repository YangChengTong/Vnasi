package com.vnasi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/path")
public class PathMapping {
	@RequestMapping("/toRegister")
	public String register(){
		return "/foreground/register";
	}
	@RequestMapping("/toLogin")
	public String login(){
		return "/foreground/login";
	}
	
	@RequestMapping("/toForegroundHead")
	public String foregroundHead(){
		return "/foreground/head";
	}
	
	@RequestMapping("/toForegroundTail")
	public String foregroundtail(){
		return "/foreground/tail";
	}
	@RequestMapping("/toManageIndex")
	public String manageIndex(){
		return "/manage/index";
	}
	
	@RequestMapping("/toUnAuthorized")
	public String unauthorized(){
		return "/foreground/unauthorized";
	}
}
