package com.semiproj.member.model;

public class MemberService {
	private MemberDAO memberDao;
	
	public MemberService() {
		memberDao=new MemberDAO();
	}
}
