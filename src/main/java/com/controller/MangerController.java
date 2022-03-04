package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beans.Manger;
import com.mapper.MangerMapper;

@Controller
public class MangerController {
	@Resource
	private MangerMapper mangermapper;
	
	@RequestMapping("/login") 
	public String login(String number,String password,ModelMap m){
		//进行数据库访问
		Manger manger=mangermapper.login(number, password);
		if (manger!=null) {
			return "main.html";  
		}
		else {
			m.put("msg", "用户名或密码错误,登录失败");
			return "login.html";
		}	
	}
}
