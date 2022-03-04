package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.beans.Book;

@Mapper
public interface BookMapper {
	//图书列表
	List<Book>selectAll();	
	
	int selectbookSum();
	
	//添加图书
		int addBook(Book book);  //这里用int 或 void都可以
		
		//删除图书
		int del_book(int id);
		
		//根据id查询
		Book getBookById(int id);
		
		//更新
		int update_book(Book book); 


}
