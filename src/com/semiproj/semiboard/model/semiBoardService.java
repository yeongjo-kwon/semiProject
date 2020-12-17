package com.semiproj.semiboard.model;

import java.sql.SQLException;
import java.util.List;

public class semiBoardService {
	private semiBoardDAO dao;
	
	public semiBoardService() {
		dao=new semiBoardDAO();
	}
	
	public int insertBoard(semiBoardVO vo) throws SQLException {
		return dao.insertBoard(vo);
	}

	public List<semiBoardVO> selectAll() throws SQLException{
		return dao.selectAll();
	}
	
	public semiBoardVO selectByNo(int no) throws SQLException {
		return dao.selectByNo(no);
	}
	
	public int updateBoard(semiBoardVO vo) throws SQLException {
		return dao.updateBoard(vo);
	}
	
	public int deleteBoard(int no) throws SQLException {
		return dao.deleteBoard(no);
	}

	public int updateReadCount(int no) throws SQLException {
		return dao.updateReadCount(no);
	}
	
}
