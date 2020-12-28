package com.semiproj.member.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.member.model.MemberService;
import com.semiproj.member.model.MemberVO;

public class MemberEditOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		/member/memberEdit_ok.do - > memberEditOkCOntroller
		-> /member/memberDetail.do  redirect
		*/
		
		String pwd=request.getParameter("pwd");
		String zipcode=request.getParameter("zipcode");
		String address=request.getParameter("address");
		String addressDetail=request.getParameter("addressDetail");
		String hp1=request.getParameter("hp1");
		String hp2=request.getParameter("hp2");
		String hp3=request.getParameter("hp3");
		String email1=request.getParameter("email1");
		String email2=request.getParameter("email2");
		String email3=request.getParameter("email3");
		
		String hp="", email="";
		if(hp2!=null && !hp2.isEmpty() && hp3!=null && !hp3.isEmpty()){
			hp=hp1+"-"+hp2+"-"+hp3;
		}
		
		if(email1!=null && !email1.isEmpty()){
			if(email2.equals("etc")){
				if(email3!=null && !email3.isEmpty()){
					email= email1+"@"+email3;
				}else{
					email=email1+"@"+email2;
				}
			}
		}
		
		//2
		MemberService service = new MemberService();
		
		try {
			MemberVO vo = new MemberVO();
			vo.setAddress(addressDetail);
			vo.setAddressDetail(addressDetail);
			vo.setEmail(email);
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}

	@Override
	public boolean isRedirect() {
		
		return false;
	}

}
