package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.beans.Comment;



@Mapper
public interface CommentMapper {
	 List<Comment>selectAll();	
	 
	int selectcommentSum();

	int addComment(Comment Comment); 
	
	//删除图书
	int del_comment(int id);
	
	//根据id查询
	Comment getCommentByname(String user_name);
	
	//更新
	int update_Comment(Comment Comment); 
}
