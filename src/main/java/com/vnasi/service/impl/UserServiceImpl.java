package com.vnasi.service.impl;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vnasi.mapper.VnasiUserMapper;
import com.vnasi.pojo.VnasiUser;
import com.vnasi.pojo.VnasiUserExample;
import com.vnasi.pojo.VnasiUserExample.Criteria;
import com.vnasi.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private VnasiUserMapper userMapper;
	
	public int register(VnasiUser user) {
		return userMapper.insert(user);
	}

	@RequiresRoles({"admin"})
	public VnasiUser login(VnasiUser user) {
		VnasiUserExample userExample = new VnasiUserExample();
		Criteria createCriteria = userExample.createCriteria();
		
		if(null!=user && !"".equals(user)){
			if(null!=user.getUserId() && !"".equals(user.getUserId())){
				createCriteria.andUserIdEqualTo(user.getUserId());
			}
			if(null!=user.getPassword() && !"".equals(user.getPassword())){
				createCriteria.andPasswordEqualTo(user.getPassword());
			}
		}
		VnasiUser user2 =null;
		List<VnasiUser> list = userMapper.selectByExample(userExample);
		//for(int i =0;i<list.size();i++){
			user2 =list.get(0);
		//}
		return user2;
	}

	public VnasiUser findUserByUserName(String userName) {
		return userMapper.selectByPrimaryKey(userName);
	}

}
