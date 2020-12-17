package com.semiproj.bookinfo.model;

public class BookInfoService {
	private BookInfoDAO bookinfoDao;
	
	BookInfoService(){
		bookinfoDao=new BookInfoDAO();
	}
}
