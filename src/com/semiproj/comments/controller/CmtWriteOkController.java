package com.semiproj.comments.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.comments.model.CommentsService;
import com.semiproj.comments.model.CommentsVO;

public class CmtWriteOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	/*
	 	/comments/comments_write_ok.do⇒ CmtWriteOkController
	 	   ⇒ //book/bookDetail.do로 리다이렉트
	 	  
	 */
		// 조건
		//1
		//1.
		String bookNo=request.getParameter("bookNo2");
		String nickname=request.getParameter("nickname");
		String pwd=request.getParameter("pwd");
		String content=request.getParameter("content");
		
		//2.
		CommentsService service=new CommentsService();
		String msg="등록에 실패했습니다.", url="/book/bookDetail.do?no="+bookNo;
		try {
			CommentsVO vo=new CommentsVO();
			vo.setBookNo(Integer.parseInt(bookNo));
			vo.setNickname(nickname);
			vo.setPwd(pwd);
			vo.setContent(content);
			
			int cnt=service.insertCmt(vo);
			if(cnt>0) {
				msg="댓글 등록 성공";
				url="/book/bookDetail.do?no="+bookNo;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3.

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		//4.
		return "/common/message.jsp";
	}
	@Override
	public boolean isRedirect() {
		return false;
	}

}
