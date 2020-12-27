package com.semiproj.writer.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.writer.model.WriterService;
import com.semiproj.writer.model.WriterVO;

public class WriterListController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		WriterService service=new WriterService();
		List<WriterVO> list=null;
		
		try {
			list=service.selectAll();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		return "/writer/writerList.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
	

}
