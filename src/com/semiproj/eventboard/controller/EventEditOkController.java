package com.semiproj.eventboard.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.eventboard.model.eventBoardService;
import com.semiproj.eventboard.model.eventBoardVO;

public class EventEditOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
			6. 글 수정하기
			
			/eventBoard/eventEdit_ok.do => EventEditOkController
			=> eventList.do로 redirect
		*/
		//1
		//param으로 받아온 no
		String no=request.getParameter("no");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		//2
		eventBoardService eventService=new eventBoardService();
		
		try {
			eventBoardVO eventVo=new eventBoardVO();
			eventVo.setNo(Integer.parseInt(no));
			eventVo.setTitle(title);
			eventVo.setContent(content);
			
			int cnt=eventService.updateBoard(eventVo);
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
