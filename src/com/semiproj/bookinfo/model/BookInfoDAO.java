package com.semiproj.bookinfo.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.semiproj.db.ConnectionPoolMgr;

public class BookInfoDAO {
	private ConnectionPoolMgr pool;

	public BookInfoDAO(){
		pool=new ConnectionPoolMgr();
	}

	public List<BookInfoVO> selectAll(String condition, String keyword) throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<BookInfoVO> list=new ArrayList<BookInfoVO>();
		try {
			con=pool.getConnection();

			String sql="select * from bookinfo";
			if(keyword!=null && !keyword.isEmpty()) {
				sql+=" where "+condition+" like '%'||?||'%'";
			}
			sql+=" order by no desc";
			ps=con.prepareStatement(sql);

			if(keyword!=null && !keyword.isEmpty()) {
				ps.setString(1, keyword);
			}

			rs=ps.executeQuery();
			while(rs.next()) {
				int no=rs.getInt("no");
				String title=rs.getString("title");
				int price=rs.getInt("price");
				Timestamp regdate=rs.getTimestamp("regdate");
				String publisher=rs.getString("publisher");
				int wrNo=rs.getInt("wrNo");
				String content=rs.getString("publisher");
				String txtFileName=rs.getString("txtFileName");
				String coverFileName=rs.getString("coverFileName");
				String txtOriginFileName=rs.getString("txtOriginFileName");
				String coverOriginFileName=rs.getString("coverOriginFileName");

				BookInfoVO vo=new BookInfoVO(no, title, price, regdate, publisher, wrNo, content, txtFileName, coverFileName, txtOriginFileName, coverOriginFileName);
				list.add(vo);
			}
			System.out.println("list.size="+list.size()
			+", 매개변수 condition="+condition+", keyword="+keyword);

			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public BookInfoVO selectByNo(int no) throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		BookInfoVO vo=null;
		try {
			con=pool.getConnection();

			String sql="select * from bookinfo" + 
					" where no=?";
			ps=con.prepareStatement(sql);

			ps.setInt(1, no);

			rs=ps.executeQuery();
			if(rs.next()) {
				String title=rs.getString("title");
				int price=rs.getInt("price");
				Timestamp regdate=rs.getTimestamp("regdate");
				String publisher=rs.getString("publisher");
				int wrNo=rs.getInt("wrNo");
				String content=rs.getString("content");
				String txtFileName=rs.getString("txtFileName");
				String coverFileName=rs.getString("coverFileName");
				String txtOriginFileName=rs.getString("txtOriginFileName");
				String coverOriginFileName=rs.getString("coverOriginFileName");

				vo=new BookInfoVO(no, title, price, regdate, publisher, wrNo, content, txtFileName, coverFileName, txtOriginFileName, coverOriginFileName);
			}
			System.out.println("번호로 조회 결과 vo="+vo+", 매개변수 no="+no);

			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public int insertBook(BookInfoVO vo) throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;

		try{
			con=pool.getConnection();

			String sql="insert into bookinfo(no, title, price, publisher, wrno, content, txtfilename, coverfilename, txtoriginfilename, coveroriginfilename)" + 
					" values(bookinfo_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getTitle());
			ps.setInt(2, vo.getPrice());
			ps.setString(3, vo.getPublisher());
			ps.setInt(4, vo.getWrNo());
			ps.setString(5, vo.getContent());
			ps.setString(6, vo.getTxtFileName());
			ps.setString(7, vo.getCoverFileName());
			ps.setString(8, vo.getTxtOriginFileName());
			ps.setString(9, vo.getCoverOriginFileName());

			int cnt=ps.executeUpdate();
			System.out.println("책 등록 결과 cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	//작가번호로 책조회
	public List<BookInfoVO> selectByWrno(int wrno) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BookInfoVO> list=new ArrayList<BookInfoVO>(); 

		try {
			con=pool.getConnection();

			String sql="select * from bookinfo where wrno=?"
					+ "	order by regdate desc";
			ps=con.prepareStatement(sql);
			ps.setInt(1, wrno);

			rs=ps.executeQuery();
			while(rs.next()) {
				int no=rs.getInt("no");
				String content=rs.getString("content");
				String coverFileName=rs.getString("coverFileName");
				String coverOriginFileName=rs.getString("coverOriginFileName");
				int price=rs.getInt("price");
				String publisher=rs.getString("publisher");
				Timestamp regdate=rs.getTimestamp("regdate");
				String title=rs.getString("title");
				String txtFileName=rs.getString("txtFileName");
				String txtOriginFileName=rs.getString("txtOriginFileName");

				BookInfoVO vo=new BookInfoVO(no, title, price, regdate, publisher, wrno, content, txtFileName, coverFileName, txtOriginFileName, coverOriginFileName);
				list.add(vo);

			}
			System.out.println("작가 책 조회 결과 list.size="+list.size()+", 매개변수 no="+wrno);
			return list;

		}finally {
			pool.dbClose(rs, ps, con);
		}
	}

}
