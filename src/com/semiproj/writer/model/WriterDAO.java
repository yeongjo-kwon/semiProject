package com.semiproj.writer.model;

import com.semiproj.db.ConnectionPoolMgr;

public class WriterDAO {
	private ConnectionPoolMgr pool;
	
	public WriterDAO() {
		pool=new ConnectionPoolMgr();
	}
}
