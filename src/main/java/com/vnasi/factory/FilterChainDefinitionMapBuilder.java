package com.vnasi.factory;

import java.util.LinkedHashMap;

/**
 * 模拟从数据库中获取的静态资源map
 * @author Administrator
 *
 */
public class FilterChainDefinitionMapBuilder {
		public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
			LinkedHashMap<String, String> hashMap = new LinkedHashMap<String, String>();
			
			hashMap.put("/user/login.do", "anon");
			hashMap.put("/path/toLogin", "anon");
			
			
			/*hashMap.put("/css/**", "anon");
			hashMap.put("/files/**", "anon");
			hashMap.put("/images/**", "anon");
			hashMap.put("/img/**", "anon");
			hashMap.put("/js/**", "anon");
			hashMap.put("/scripts/**", "anon");*/
			hashMap.put("/path/logout", "logout");
			
			hashMap.put("/**", "authc");
			return hashMap;
		}
}
