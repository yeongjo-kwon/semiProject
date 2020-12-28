
package com.semiproj.bookinfo.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.bookinfo.model.BookInfoService;
import com.semiproj.bookinfo.model.BookInfoVO;
import com.semiproj.comments.model.CommentsService;
import com.semiproj.comments.model.CommentsVO;
import com.semiproj.writer.model.WriterService;
import com.semiproj.writer.model.WriterVO;

public class BookDetailController implements Controller{
	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1.
		//=> http://localhost:9090/semiproj/book/bookDetail.do?no=9999
		String no=request.getParameter("no");
		if(no==null || no.isEmpty()) {
			request.setAttribute("msg", "잘못된 url");
			request.setAttribute("url", "/book/bookList.do");
			
			//4.
			return "/common/message.jsp";
		}
		//2.
		//책 정보
		BookInfoService service=new BookInfoService();
		BookInfoVO vo=null;
		try {
			vo=service.selectByNo(Integer.parseInt(no));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//작가 이름
		WriterService wService=new WriterService();
		WriterVO wVo=null;
		try {
			wVo=wService.selectByNo(vo.getWrNo());
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		// 댓글 리스트 추가
		CommentsService commService=new CommentsService();
		List<CommentsVO> list=null;
		try {
			list=commService.selectAllCmt(Integer.parseInt(no));
		}catch(SQLException e){
			e.printStackTrace();
		}
		
    //3.
		request.setAttribute("bookVo", vo);
		request.setAttribute("writerVo", wVo);
		request.setAttribute("commList", list);
		
		//4.
		return "/book/bookDetail.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
}

