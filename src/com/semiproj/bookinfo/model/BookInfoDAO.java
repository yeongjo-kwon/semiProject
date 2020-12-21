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
}
