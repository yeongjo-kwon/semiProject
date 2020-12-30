package com.semiproj.comments.controller;

import java.sql.SQLException;
import java.util.List;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.semiproj.comments.model.CommentsService;
import com.semiproj.comments.model.CommentsVO;

public class CmtDetailController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 	/comments/comments_detail.do => CmtDetailController
		 	 => /comments/comments_detail.jsp포워딩
		 */
		String no=request.getParameter("no");
		//String bookNo=request.getParameter("bookNo");
		String nickname=request.getParameter("nickname");
		System.out.println("DetailController : no="+no+" , nickname="+nickname);
		if(no==null || no.isEmpty()) {
			request.setAttribute("msg", "잘못된 url입니다.");
			request.setAttribute("url","/book/bookDetail.jsp");
			return "/common/message.jsp";
		}
		//CommentsVO commVo=new CommentsVO();
		CommentsService cmtservice=new CommentsService();
		List<CommentsVO> list=null;
		try {
			list=cmtservice.selectAllCmt(Integer.parseInt(no));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("no", no);
		request.setAttribute("commList", list);
		System.out.println("comController list.size="+list.size());
		
		return "/comments/comments_detail.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
}
