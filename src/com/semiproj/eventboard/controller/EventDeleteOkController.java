package com.semiproj.eventboard.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.eventboard.model.eventBoardService;

public class EventDeleteOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
			8. 글 삭제하기
		
			/eventBoard/eventDelete_ok.do => EventDeleteOkController
			=> eventList.do로 redirect
		*/
		//1
		String no=request.getParameter("no");
		
		//2
		eventBoardService eventService=new eventBoardService();
		
		try {
			int cnt=eventService.deleteBoard(Integer.parseInt(no));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3
		//4
		return "/eventBoard/eventList.do";
	}

	@Override
	public boolean isRedirect() {
		return true;	//redirect
	}

}
