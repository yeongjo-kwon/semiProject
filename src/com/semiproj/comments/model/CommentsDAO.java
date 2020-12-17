package com.semiproj.comments.model;

import com.semiproj.db.ConnectionPoolMgr;

public class CommentsDAO {
	private ConnectionPoolMgr pool;
	
	public CommentsDAO() {
		pool=new ConnectionPoolMgr();
	}
}
