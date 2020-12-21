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
<meta charset="utf-8">
<script type="text/javascript">
	
</script>
</head>
<body>
	<%
	//List<CommentsVO> commList = (List<CommentsVO>) request.getAttribute("commList");
	%>
	<div id="anchorReview" class="review-container thin-line">
	<input type="text" name="no" id="no" value="${param.no}">
		<h3 class="book-info-title link">
			<a href="<c:url value='/comments/comments_detail.do?no=${param.no}'/>"
				class="gtm-review-2depth">한 줄 리뷰<span class="number">49 </span><i
				class="fas fa-chevron-right"></i></a>
		</h3>
		<c:if test="${empty commList}">
			<p>등록된 리뷰가 없습니다.</p>
		</c:if>
		<!-- 댓글 반복문 시작 -->
		<c:if test="${!empty commList}">
			<c:set var="size" value="commList.size()" />
			<!-- 리스트사이즈 3만 적용 -->
			<c:forEach var="i" begin="1" end="3">
				<%-- 	CommentVO commVo=commList.get(i); 
				String commContent=commVo.getContent();
				if(commContent==null){
					commContent="";		%>
				<%	}//for  %> --%>
				<ul class="review-list">
					<li>
						<div class="image" style="background-image: url('');">
							<a href="#" class="gtm-review-lib"></a>
						</div>
						<div class="info">
							<p class="nickname">
								<a href="#" class="gtm-review-lib">${commVo.name }</a>
							</p>
							<span class="date"><fmt:formatDate
									value="${commVo.regdate }" pattern="yyyy-MM-dd hh:mm:ss" /></span>
									 <a	href="<c:url value='/comments/comments_detail.do'/>"
								class="gtm-review-textclick" id="textclick">
								 <pre class="cont">${commVo.content }</pre>
							</a>
							<div class="review-setting">
								<p>이 리뷰가 마음에 드시나요?</p>
								<button type="button" class="like-button gtm-review-like">
									<i class="far fa-heart"></i> <span>0</span>
								</button>
							</div>
						</div>
					</li>
				</ul>
	</c:forEach>
	</c:if>
	</div>
</body>
</html>
