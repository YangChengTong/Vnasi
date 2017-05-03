package com.vnasi.service;

import com.vnasi.pojo.VnasiUser;

public interface UserService {
		//注册
		int register(VnasiUser user);
		//登录
		VnasiUser login(VnasiUser user);
		//根据用户名查询用户信息
		VnasiUser findUserByUserName(String userName);
}
