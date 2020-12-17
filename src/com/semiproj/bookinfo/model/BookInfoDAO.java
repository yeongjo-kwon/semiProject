package com.semiproj.bookinfo.model;

import com.semiproj.db.ConnectionPoolMgr;

public class BookInfoDAO {
	private ConnectionPoolMgr pool;
	
	public BookInfoDAO(){
		pool=new ConnectionPoolMgr();
	}
}
