package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.beans.Book;

import com.mapper.BookMapper;



@Controller
public class BookController {
@Resource
		private BookMapper bookmapper;
					

  @GetMapping("right.html")
		public String booklist(ModelMap m) {
	     List<Book> list = bookmapper.selectAll();
	    	m.put("list", list);	
	    	m.addAttribute("msg","共有 " +selectsum()+" 条数据");
			return "right.html"; 
		}
  int selectsum() {
	   	 return bookmapper.selectbookSum();
	    }
  
      
      @PostMapping("/addbook")  
      public String addBook(Book book,ModelMap m) {
    	  bookmapper.addBook(book);
      	 m.put("msg","发布成功");
      	 return "form";
      }
      
      @GetMapping("/delete/{id}")
		public String delete(@PathVariable int id,ModelMap m) {
    	  bookmapper.del_book(id);
			return booklist(m);
			
		}
      @GetMapping("/modification/{id}")    
      public String modification(@PathVariable int id, Model model){
          Book book = bookmapper.getBookById(id);
          model.addAttribute("book", book);
  
          return "modification.html";
      } 
      
    //真正的进行修改
      @PostMapping("/update")
		public String update(Book book,ModelMap m) {
    	  bookmapper.update_book(book);
			m.put("msg", "用户信息更新成功");
			return "modification.html"; 
	}
      
      @PostMapping("/search")
	    public String search(int id,ModelMap m) {
	    	Book book = bookmapper.getBookById(id);
	    	m.put("book", book);
	    	return "search.html";
	    }
      
     
}