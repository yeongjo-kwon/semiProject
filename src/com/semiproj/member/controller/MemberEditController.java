package com.semiproj.member.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.member.model.MemberService;
import com.semiproj.member.model.MemberVO;

public class MemberEditController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 memEdit.do -> MemberEditController
		 -> memberEdit.jsp
		*/
		
		String email=request.getParameter("email");
		if(email==null || email.isEmpty()) {
			request.setAttribute("msg", "잘못된 url입니다.");
			request.setAttribute("url", "/main.do");
			
			return "/common/message.jsp";
		}
		
		MemberService service = new MemberService();
		MemberVO vo = null;
		
		try {
			vo=service.selectMember(email);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("MemberVo", vo);
		
		
		return "/member/memberEdit.jsp";
	}

	@Override
	public boolean isRedirect() {
		
		return false;
	}

	
}
