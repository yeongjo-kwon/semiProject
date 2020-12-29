package com.semiproj.member.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.member.model.MemberService;
import com.semiproj.member.model.MemberVO;

public class RegisterOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//회원가입 처리
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String address=request.getParameter("address");
		String addressDetail=request.getParameter("addressDetail");
		String zipcode=request.getParameter("zipcode");
		String zipcodeDetail=request.getParameter("zipcodeDetail");
		String hp1=request.getParameter("hp1");
		String hp2=request.getParameter("hp2");
		String hp3=request.getParameter("hp3");
		String email1=request.getParameter("email1");
		String email2=request.getParameter("email2");
		String email3=request.getParameter("email3");
		String nickname=request.getParameter("nickname");
		//
		MemberService service = new MemberService();
		
		try {
			String email="", hp="";
			if(hp2!=null && !hp2.isEmpty() && hp3!=null && !hp3.isEmpty()){
				hp=hp1+"-"+hp2+"-"+hp3;
			}
			
			if(email1!=null && !email1.isEmpty()){
				if(email2.equals("etc")){
					if(email3!=null && !email3.isEmpty()){
						email=email1+"@"+email3;
					}
				}else{
					email=email1+"@"+email2;
				}
			}
			
			MemberVO vo = new MemberVO();
			vo.setAddress(addressDetail);
			vo.setAddressDetail(addressDetail);
			vo.setEmail(email);
			vo.setHp(hp);
			vo.setName(name);
			vo.setNickname(nickname);
			vo.setPwd(pwd);
			vo.setZipcode(zipcode);
			
			int cnt=service.insertMember(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return "/main.do";
	}
	
	@Override
	public boolean isRedirect() {
		return false;
	}

}
