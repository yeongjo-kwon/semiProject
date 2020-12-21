package com.semiproj.eventboard.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.eventboard.model.eventBoardService;
import com.semiproj.eventboard.model.eventBoardVO;

public class EventDetailController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
			4. 글 상세보기 
		
			/eventBoard/eventDetail.do => EventDetailController
			=> eventDetail.jsp로 포워드 
		*/
		//1. 요청 파라미터 읽어오기
		//=> http://localhost:9090/semiproj/eventBoard/eventDetail.do?no=6
		String no=request.getParameter("no");
		
		//2. 비즈니스 로직 처리 - 모델에 의뢰, db작업
		eventBoardService eventService=new eventBoardService();
		eventBoardVO eventVo=null;
		
		try {
			eventVo=eventService.selectByNo(Integer.parseInt(no));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3. request에 결과 저장
		request.setAttribute("eventVo", eventVo);
		
		//4. 뷰페이지 리턴
		return "/eventBoard/eventDetail.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
