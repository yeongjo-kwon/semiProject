package com.semiproj.writer.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.writer.model.WriterService;
import com.semiproj.writer.model.WriterVO;

public class WriterInsertOkController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String name=request.getParameter("name");
		String intro=request.getParameter("intro");
		String photoFileName=request.getParameter("photoFileName");
		String photoOriginFileName=request.getParameter("photoOriginFileName");
		
		WriterService service=new WriterService();
		
		try {
			WriterVO vo=new WriterVO();
			vo.setName(name);
			vo.setIntro(intro);
			vo.setPhotoFileName(photoFileName);
			vo.setPhotoOriginFileName(photoOriginFileName);
			int cnt=service.insertWriter(vo);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return "/writer/writerList.do";
	}

	@Override
	public boolean isRedirect() {
		return true;
	}
	

}
