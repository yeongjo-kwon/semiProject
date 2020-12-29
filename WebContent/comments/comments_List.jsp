<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>댓글리스트 보여주기</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/realcmt_2.css'/>" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<meta charset="utf-8">
<script type="text/javascript"></script>
</head>
<body>
	<%
	//테스트 세션 - 삭제
	session.setAttribute("no", "1");
	session.setAttribute("bookno", "1");
	session.setAttribute("nickname", "세미");
	session.setAttribute("img", "AvataImg");
	// bookno, nickname 필요
	%>
	<form method="post" name="cmtFrm"
		action="<c:url value='/comments/comments_detail.do?no=${bookno}'/>">
		<div id="anchorReview" class="review-container thin-line">
			<input type="text" name="bookno" id="bookno" value="${bookno}">
			<input type="text"	name="nickname" id="nickname" value="${nickname}" /> 
			<h3 class="book-info-title link">
				<button type="submit" class="gtm-review-2depth" >
					한 줄 리뷰 <span class="number">${fn:length(commList)}</span><i class="fas fa-chevron-right"></i>
			</button>
			</h3>
			<c:if test="${empty commList}">
				<p>등록된 리뷰가 없습니다.</p>
			</c:if>
			<!-- 리스트 진짜 -->
		 	<c:if test="${!empty commList}">
				<ul class="review-list">
					<li>
						<div class="image" style="background-image: url('');">
							<i class="fas fa-user-circle fa-2x" style="color: #757575"></i> <a
								href="#" class="gtm-review-lib"></a>
						</div>
							<c:forEach var="i" begin="1" end="3">
										<c:set var="commVo" value="${commList[i] }" />
						<div class="info">
							<p class="nickname">
								<a href="#" class="gtm-review-lib">${commVo.nickname}</a>
							</p>
							<span class="date"><fmt:formatDate value="${commVo.regdate}" 
													pattern="yyyy-MM-dd hh:mm:ss "/></span>
							<a
								href="<c:url value='/comments/comments_detail.do?no=${session.bookno}'/>"
								class="gtm-review-textclick" id="textclick"> 
								<pre	class="cont">${commVo.content }</pre>
							</a> 
							<div class="review-setting">
								<p>이 리뷰가 마음에 드시나요?</p>
								<button type="submit" class="like-button gtm-review-like">
									<i class="far fa-heart"></i> <span>4</span>
								</button>
							</div>
						</div>
				</c:forEach>
					</li>
				</ul>
			</c:if>
		</div>
	</form>
</body>
</html>