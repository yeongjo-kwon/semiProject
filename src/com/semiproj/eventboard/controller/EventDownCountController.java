package com.semiproj.eventboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class EventDownCountController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
			8. 업로드파일 다운로드하기
			
			/eventBoard/eventDownCount.do => EventDownCountController
			=> eventDetail.do로 redirect 
		*/
		//1. 요청 파라미터 읽어오기
		String no=request.getParameter("no");
		String imgFileName=request.getParameter("imgFileName");
		
		//2. 비즈니스 로직 처리
		
		//3. request에 결과 저장
		
		//4. 뷰페이지 리턴
		return ;
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
