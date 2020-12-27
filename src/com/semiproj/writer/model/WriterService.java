package com.semiproj.writer.model;

import java.sql.SQLException;
import java.util.List;

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
	
	public List<WriterVO> selectByName(String name) throws SQLException {
		return writerDao.selectByName(name);
	}
}
