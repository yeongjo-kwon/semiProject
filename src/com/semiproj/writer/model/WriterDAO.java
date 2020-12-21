package com.semiproj.writer.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.semiproj.db.ConnectionPoolMgr;

public class WriterDAO {
	private ConnectionPoolMgr pool;
	
	public WriterDAO() {
		pool=new ConnectionPoolMgr();
	}
	
	public int insertWriter(WriterVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
		con=pool.getConnection();
		
		String sql="insert into writer\r\n" + 
				"values(writer_seq.nextval, ?, ?, ?, ?)";
		ps=con.prepareStatement(sql);
		
		ps.setString(1, vo.getName());
		ps.setString(2, vo.getIntro());
		ps.setString(3, vo.getPhotoFileName());
		ps.setString(4, vo.getPhotoOriginFileName());
				
		int cnt=ps.executeUpdate();
		System.out.println("글쓰기 결과 cnt="+cnt+", 매개변수 vo="+vo);
		return cnt;
		
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public WriterVO selectByNo(int no) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		WriterVO vo=new WriterVO();
		
		try {
			con=pool.getConnection();
			
			String sql="select * from writer where no=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, no);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setNo(no);
				vo.setName(rs.getString("name"));
				vo.setIntro(rs.getString("intro"));
				vo.setPhotoFileName(rs.getString("photofilename"));
				vo.setPhotoOriginFileName(rs.getString("photooriginfilename"));
			}
			System.out.println("작가 상세보기 결과 vo="+vo+", 매개변수 no="+no);
			return vo;
					
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
}//class























