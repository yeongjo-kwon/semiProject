package com.semiproj.bookinfo.model;

import java.sql.SQLException;
import java.util.List;

public class BookInfoService {
	private BookInfoDAO bookinfoDao;
	
	public BookInfoService(){
		bookinfoDao=new BookInfoDAO();
	}
	
	public List<BookInfoVO> selectAll(String condition, String keyword) throws SQLException{
		return bookinfoDao.selectAll(condition, keyword);
	}
}
