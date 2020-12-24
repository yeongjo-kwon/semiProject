package com.semiproj.writer.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.writer.model.WriterService;
import com.semiproj.writer.model.WriterVO;

public class WriterPageController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String no=request.getParameter("no");
		
		if(no==null || no.isEmpty()) {
			request.setAttribute("msg", "잘못된 url입니다");
			request.setAttribute("url", "/board/list.do");
			
			return "/common/message.jsp";
			
		}
		
		WriterService service=new WriterService();
		WriterVO vo=null;
		
		try {
			vo=service.selectByWrno(Integer.parseInt(no));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("vo", vo);
		
		return "/writer/writerPage.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
}