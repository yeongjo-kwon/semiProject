package com.semiproj.writer.model;

import java.sql.SQLException;

public class WriterService {
	private WriterDAO writerDao;
	
	public WriterService() {
		writerDao=new WriterDAO();
	}
	
	public int insertWriter(WriterVO vo) throws SQLException {
		return writerDao.insertWriter(vo);
	}
	
	public WriterVO selectByNo(int no) throws SQLException {
		return writerDao.selectByNo(no);
	}
}
