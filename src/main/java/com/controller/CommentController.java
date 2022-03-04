package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.beans.Comment;
import com.mapper.CommentMapper;


@Controller
public class CommentController {
	@Resource
	private CommentMapper commentmapper;
	
	@GetMapping("commentall.html")
	public String commentlist(ModelMap m) {
     List<Comment> list = commentmapper.selectAll();
    	m.put("list", list);	
    	m.addAttribute("msg","共有 " +selectsum()+" 条数据");
		return "commentall.html"; 
	}
int selectsum() {
   	 return commentmapper.selectcommentSum();
    }

@PostMapping("/addcomment")  
public String addCommetn(Comment comment,ModelMap m) {
	commentmapper.addComment(comment);
	 m.put("msg","发布成功");
	 return "commentadd";
}
@PostMapping("/search3")
public String search(String user_name,ModelMap m) {
	Comment comment= commentmapper.getCommentByname(user_name);
	m.put("comment", comment);
	return "commentsearch.html";
}

@GetMapping("/deletecomment/{id}")
public String delete(@PathVariable int id,ModelMap m) {
  commentmapper.del_comment(id);
	return commentlist(m);
	
}
}
