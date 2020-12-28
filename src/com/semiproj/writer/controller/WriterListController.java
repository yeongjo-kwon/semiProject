package com.semiproj.writer.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.common.PagingVO;
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

		//페이징처리
		int currentPage=1;
		if(request.getParameter("curPage")!=null
				&& !request.getParameter("curPage").isEmpty()) {
			currentPage
			=Integer.parseInt(request.getParameter("curPage"));
		}

		int totalRecord=0;
		if(list!=null) totalRecord=list.size();

		int pageSize=5, blockSize=10;

		PagingVO pageVo=new PagingVO(currentPage, totalRecord, pageSize, blockSize);

		request.setAttribute("writerList", list);
		request.setAttribute("pageVo", pageVo);
		return "/writer/writerList.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}



}
