package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.beans.User;
import com.mapper.UserMapper;

@Controller
public class UserController {
	@Resource
	private UserMapper usermapper;
	

	@GetMapping("userall.html")
	public String userlist(ModelMap m) {
     List<User> list = usermapper.selectAll();
    	m.put("list", list);	
    	m.addAttribute("msg","共有 " +selectsum()+" 条数据");
		return "userall.html"; 
	}
int selectsum() {
   	 return usermapper.selectuserSum();
    }

@PostMapping("/adduser")  
public String addUser(User user,ModelMap m) {
	usermapper.addUser(user);
	 m.put("msg","发布成功");
	 return "useradd";
}
@GetMapping("/delete1/{id}")
public String delete(@PathVariable int id,ModelMap m) {
  usermapper.del_user(id);
	return userlist(m);
	
}
@GetMapping("/modification1/{id}")    
public String modification(@PathVariable int id, Model model){
    User user = usermapper.getUserById(id);
    model.addAttribute("user", user);
    return "usermodification.html";
} 
//真正的进行修改
@PostMapping("/update1")
	public String update(User user,ModelMap m) {
	  usermapper.update_user(user);
		m.put("msg", "用户信息更新成功");
		return "usermodification.html"; 
}
@PostMapping("/search1")
public String search(int id,ModelMap m) {
	User user= usermapper.getUserById(id);
	m.put("user", user);
	return "usersearch.html";
}
}
