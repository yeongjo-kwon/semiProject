package com.semiproj.semiboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.semiproj.db.ConnectionPoolMgr;


public class semiBoardDAO {
	private ConnectionPoolMgr pool;

	public semiBoardDAO() {
		pool=new ConnectionPoolMgr();
	}

	public int insertBoard(semiBoardVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2 con
			con=pool.getConnection();

			//3. ps
			String sql="insert into board(no, title, content)" + 
					" values(board_seq.nextval,?,?)";
			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());

			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("글쓰기 결과 cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	public List<semiBoardVO> selectAll() throws SQLException{

		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<semiBoardVO> list=new ArrayList<semiBoardVO>();
		try {
			//1,2 con
			con=pool.getConnection();

			//3. ps
			String sql="select * from board order by no desc";
			ps=con.prepareStatement(sql);

			//4. exec
			rs=ps.executeQuery();
			while(rs.next()) {
				int no=rs.getInt("no");
				String title=rs.getString("title");
				int readcount=rs.getInt("readcount");
				Timestamp regdate=rs.getTimestamp("regdate");
				String content=rs.getString("content");
				String imgFileName=rs.getString("imgFileName");
				String imgOriginFileName=rs.getString("imgOriginFileName");

				semiBoardVO vo = new semiBoardVO(no, title, regdate, content, imgFileName, imgOriginFileName);
				list.add(vo);
			}
			System.out.println("글목록 결과 list.size="+list.size());
		
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public semiBoardVO selectByNo(int no) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		semiBoardVO vo = new semiBoardVO();
		try {
			//1,2
			con=pool.getConnection();

			//3
			String sql="select * from semiboard where no=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, no);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setNo(no);
				vo.setTitle(rs.getString("title"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setContent("content");
			}
			System.out.println("글 상세보기 결과 vo="+vo+", 매개변수 no="+no);

			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public int updateBoard(semiBoardVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2
			con=pool.getConnection();

			//3
			String sql="update semiboard" + 
					" set title=?,content=?" + 
					" where no=?";
			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setInt(3, vo.getNo());

			//4
			int cnt=ps.executeUpdate();
			System.out.println("글수정 결과, cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	public int deleteBoard(int no) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2
			con=pool.getConnection();

			//3
			String sql="delete from semiboard where no=? ";
			ps=con.prepareStatement(sql);
			ps.setInt(1, no);
			// pwd있어야하지 않나?

			//4
			int cnt=ps.executeUpdate();
			System.out.println("글 삭제 결과, cnt="+cnt+", 매개변수 no="+no);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	public int updateReadCount(int no) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2
			con=pool.getConnection();

			//3
			String sql="update semiboard" + 
					" set readcount=readcount+1" + 
					" where no=?";
			ps=con.prepareStatement(sql);

			ps.setInt(1, no);

			//4
			int cnt=ps.executeUpdate();
			System.out.println("조회수 증가 결과, cnt="+cnt+", 매개변수 no="+no);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
