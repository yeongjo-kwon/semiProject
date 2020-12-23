package com.semiproj.bookinfo.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.bookinfo.model.BookInfoService;
import com.semiproj.bookinfo.model.BookInfoVO;

public class BookWriteOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1.
		String title=request.getParameter("title");
		String price=request.getParameter("price");
		String publisher=request.getParameter("publisher");
		
		//2.
		BookInfoService service=new BookInfoService();
		BookInfoVO vo=new BookInfoVO();
		vo.setTitle(title);
		vo.setPrice(Integer.parseInt(price));
		vo.setPublisher(publisher);
		
		try {
			int cnt=service.insertBook(vo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3.
		//4.
		return "/book/bookList.do";
	}

	@Override
	public boolean isRedirect() {
		return true; //redirect
	}

}
