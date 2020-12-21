package com.semiproj.eventboard.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.eventboard.model.eventBoardService;
import com.semiproj.eventboard.model.eventBoardVO;

public class EventWriteOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
			2. 게시판 글쓰기
			
			/eventBoard/eventWrite_ok.do => EventWriteOkController
			=> eventList.do로 redirect 
		*/
		//1. 요청 파라미터 읽어오기
		//=> http://localhost:9090/semiproj/eventBoard/eventWrite_ok.do
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		//2. 비즈니스 로직 처리 - 모델에 의뢰, db 작업
		eventBoardService eventService=new eventBoardService();
		try {
			eventBoardVO eventVo=new eventBoardVO();
			eventVo.setTitle(title);
			eventVo.setContent(content);
			
			int cnt=eventService.insertBoard(eventVo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3
		//4. 뷰페이지 리턴
		return "/eventBoard/eventList.do";
	}

	@Override
	public boolean isRedirect() {
		return true;	//redirect
	}

}
