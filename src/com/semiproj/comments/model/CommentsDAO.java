package com.semiproj.comments.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.semiproj.db.ConnectionPoolMgr;

public class CommentsDAO {
	private ConnectionPoolMgr pool;
	
	public CommentsDAO() {
		pool=new ConnectionPoolMgr();
	}
	
	public List<CommentsVO> selectAllCmt(int bookNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<CommentsVO> list = new ArrayList<CommentsVO>();
		try {
			//1,2 con
			con=pool.getConnection();
			
			//3. ps
			String sql="select * from comments" + 
					" where bookno=? order by no desc";
			ps=con.prepareStatement(sql);
			ps.setInt(1, bookNo);
			
			//4. exec
			rs=ps.executeQuery();
			while(rs.next()) {
				int no=rs.getInt("no");
				String nickname=rs.getString("nickname");
				String pwd=rs.getString("pwd");
				Timestamp regdate=rs.getTimestamp("regdate");
				String content=rs.getString("content");
				//int bookNo=rs.getInt("bookno");
				
				CommentsVO vo = new CommentsVO(no, nickname, pwd, regdate, content, bookNo);
				
				list.add(vo);
			}
			System.out.println("글목록 결과 list.size="+list.size()+" , 매개변수 bookNo="+bookNo);
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public int insertCmt(CommentsVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		int cnt=0;
		try {
			con=pool.getConnection();
			
			String sql="insert into comments(no,nickname,pwd,content,bookno)" + 
					" values(comments_seq.nextval,?,?,?,?)";
			
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getNickname());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getContent());
			ps.setInt(4, vo.getBookNo());
			
			cnt=ps.executeUpdate();
			System.out.println("댓글 작성 결과 : cnt="+cnt+" , 매개변수 vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int selectCommentsCnt(int bookNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		int count=0;
		try {
			con=pool.getConnection();
			
			String sql="select count(*) from comments"
					+ " where bookno=?";
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, bookNo);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
			System.out.println("코멘트 수 count="+count+", 매개변수 bookNo="+bookNo);
			
			return count;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
}
