package com.semiproj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.semiproj.member.model.MemberVO;

public class MainController implements Controller{
	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		HttpSession session = request.getSession();
		MemberVO vo =(MemberVO) session.getAttribute("memVo");
		
		System.out.println(vo.getNickname());
		return "/main.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
