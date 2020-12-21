package com.semiproj.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class MemberService {
	//아이디 중복확인시 사용
	public static final int EXIST_ID=1;		//아이디가 존재하는경우
	public static final int NON_EXIST_ID=2;	//아이디가 존재하지 않는 경우
	
	//로그인 처리시 사용
	public static final int LOGIN_OK=1;	//로그인 성공
	public static final int ID_NONE=2;	//아이디가 없는경우
	public static final int PWD_DISAGREE=3;	//비밀번호 불일치
		
	private MemberDAO memberDao;
	
	public MemberService() {
		memberDao=new MemberDAO();
	}
	
	public int insertMember(MemberVO vo) throws SQLException {
		return memberDao.insertMember(vo);
	}
	
	public int checkDup(String email) throws SQLException {
		return memberDao.checkDup(email);
	}
	
	public int loginCheck(String email, String pwd) throws SQLException {
		return memberDao.loginCheck(email, pwd);
	}
	
	public MemberVO seletMember(String email) throws SQLException {
		return memberDao.seletMember(email);
	}
	
	public int updateMember(MemberVO vo) throws SQLException {
		return memberDao.updateMember(vo);
	}
	
	public int withdrawMember(String email) throws SQLException {
		return memberDao.withdrawMember(email);
	}
}
