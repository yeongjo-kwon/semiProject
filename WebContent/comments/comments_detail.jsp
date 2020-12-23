<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.semiproj.comments.model.CommentsVO"%>
<%@page import="com.semiproj.comments.model.CommentsService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no,viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Document</title>
<link rel="stylesheet"
	href="<c:url value='/assets/css/realcmt_detail.css'/>" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%
		session.setAttribute("no", "1");
		session.setAttribute("bookno", "1");

		String bookno = (String) session.getAttribute("no");
		String nickname = (String) session.getAttribute("nickname");
		CommentsService cmtservice = new CommentsService();
		CommentsVO cmtvo = new CommentsVO();

		List<CommentsVO> commList = cmtservice.selectAllCmt(Integer.parseInt(bookno));
		System.out.println(commList);
		SimpleDateFormat commSdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	%>
	<form action="post" class="regiter">
		<input type="text" name="no" id="no" value="${param.no }" />
	</form>
	<div class="sub-content">
		<div class="sub-inner review-profile line">
			<div class="profile">
				<p class="nickname">
					<%=nickname%>	님<br />
					한 줄 리뷰를 작성해보세요
				</p>
				<div class="image" style="background-image: url('');"></div>
			</div>
			<div class="register">
				<textarea placeholder="한 줄 리뷰를 남겨주세요" maxlength="50"
					class="textarea"></textarea>
				<p class="text-number">
					<span>0</span><em>/</em>50
				</p>
				<button type="button" class="gtm-review-register disabled">
					리뷰 등록하기</button>
			</div>
		</div>
		<div class="sub-inner p0 review-detail">
			<p class="review-count">
				총
				<%=cmtservice.selectCommentsCnt(Integer.parseInt(bookno))%>개
			</p>
			<!-- 댓글 반복문시작 -->
			<c:if test="${empty commList}">
				<p>등록된 리뷰가 없습니다.</p>
			</c:if>
			<c:if test="${!empty commList}">
				<%
					for (int i = 0; i < commList.size(); i++) {
				%>
				<ul class="review-list">
					<li>
						<div class="image" style="background-image: url('');">
						<i class="fas fa-user-circle fa-2x solid lightgray" style="color: #757575"></i>
							<a href="#" class="gtm-review-lib"></a>
						</div>
						<div class="info">
							<p class="nickname">
								<a href="#" class="gtm-review-lib"><%=commList.get(i).getNickname()%></a>
								<!---->
								<c:if test="${i==1 }">
									<strong class="best">Best</strong>
									<strong class="rank">1등</strong>
								</c:if>
							</p>
							<span class="date"><%=commSdf.format(commList.get(i).getRegdate()) %></span>
							<pre class="cont"><%=commList.get(i).getContent() %></pre>
							<div class="review-setting">
								<p>이 리뷰가 마음에 드시나요?</p>
								<button type="button" class="like-button gtm-review-like">
									<i class="far fa-heart"></i>
									<span>141</span>
								</button>
							</div>
							<!---->
						</div>
					</li>
				</ul>
				<%} %>
			</c:if>
		</div>
	</div>
</body>
</html>
