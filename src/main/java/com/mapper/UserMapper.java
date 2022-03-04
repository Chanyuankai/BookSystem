package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.beans.User;

@Mapper
public interface UserMapper {
    List<User>selectAll();	
	int selectuserSum();
	//添加图书
			int addUser(User user);  //这里用int 或 void都可以
			
			//删除图书
			int del_user(int id);
			
			//根据id查询
			User getUserById(int id);
			
			//更新
			int update_user(User user); 
			//登录
			User login(@Param("number") String number,@Param("password") String password);

}
