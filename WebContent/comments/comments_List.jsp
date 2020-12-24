<%@page import="com.semiproj.comments.model.CommentsService"%>
<%@page import="com.semiproj.comments.model.CommentsVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>댓글리스트 보여주기</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/realcmt_2.css'/>" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<meta charset="utf-8">
<script type="text/javascript">
	
</script>
</head>
<body>
	<%
	session.setAttribute("no", "1");
	session.setAttribute("bookno", "1");
	session.setAttribute("nickname", "세미");
	session.setAttribute("img", "AvataImg");
	session.setAttribute("regdate", "");
	session.setAttribute("content", "가슴이 따뜻해지는 책입니다!");

	String bookno=(String)session.getAttribute("no");
	System.out.println("List  bookno=>"+bookno);
	SimpleDateFormat commSdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	
	//CommentsVO commVo=new CommentsVO();
	CommentsService cmtservice=new CommentsService();
	String img_e = (String)request.getAttribute("img");
	String email_e = (String)request.getAttribute("email_c");

	String email_c = (String)session.getAttribute("email");
	String nickname_c = (String)session.getAttribute("nickname");
	String img_c = (String)session.getAttribute("img");
	
	List<CommentsVO> commList=cmtservice.selectAllCmt(Integer.parseInt(bookno));
	System.out.println(commList);
	%>
	<form method="post" name="cmtFrm"
		action="<c:url value='/comments/comments_detail.do?no=${bookno}'/>">
		<div id="anchorReview" class="review-container thin-line">
			<input type="text" name="bookno" id="bookno" value="${bookno}">
			<h3 class="book-info-title link">
				<button type="submit" class="gtm-review-2depth">
					한 줄 리뷰 <span class="number"><%=cmtservice.selectCommentsCnt(Integer.parseInt(bookno)) %>
					</span><i class="fas fa-chevron-right"></i></a>
			</h3>
			<c:if test="${!empty commList}">
				<p>등록된 리뷰가 없습니다.</p>
			</c:if>
			<c:if test="${empty commList}">
				<%
		  for(int i=0; i<=2; i++){
		  %>
				<ul class="review-list">
					<li>
						<div class="image" style="background-image: url('');">
							<i class="fas fa-user-circle fa-2x" style="color: #757575"></i> <a
								href="#" class="gtm-review-lib"></a>
						</div>
						<div class="info">
							<p class="nickname">
								<a href="#" class="gtm-review-lib"><%=commList.get(i).getNickname()%></a>
							</p>
							<span class="date"><%=commSdf.format(commList.get(i).getRegdate()) %></span>
							<a
								href="<c:url value='/comments/comments_detail.do?no=${bookno}'/>"
								class="gtm-review-textclick" id="textclick"> 
								<pre	class="cont"><%=commList.get(i).getContent() %></pre>
							</a>
							<div class="review-setting">
								<p>이 리뷰가 마음에 드시나요?</p>
								<button type="submit" class="like-button gtm-review-like">
									<i class="far fa-heart"></i> <span><%=478-i*7%></span>
								</button>
							</div>
						</div>
					</li>
				</ul>
				<%} %>
			</c:if>
		</div>
	</form>
</body>
</html>