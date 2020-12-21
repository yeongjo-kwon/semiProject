<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 입력 폼</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/realcmt_2.css'/>" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<!-- 댓글 수 증가하면 카운트하는거 추가할거면 js넣기 -->
</head>
<body>
	<!-- 유효성 검사-닉네임 추가하기 -->
	<div id="anchorReview" class="review-container thin-line">
		<form method="post" name="cmtFrm"
			action="<c:url value='/comments/comments_write_ok.do'/>">
			<!-- hidden으로 변경하기 -->
			<!-- bookno로 변경하기 -->
			<!-- name을 nickname으로 변경하기,pwd를 email? -->
			<input type="text" name="bdNo2" id="bdNo2" value="${param.no }">
			<input type="text" name="name" id="name" />
			 <input type="text" name="pwd" id="pwd" />

			<!-- 댓글 입력 시작 -->
			<div class="review-register">
				<div class="image" style="background-image: url('');"></div>
				<div class="register">
					<textarea placeholder="한 줄 리뷰를 남겨주세요" maxlength="50"
						class="textarea" style="height: 22px" name="content"></textarea>
					<input type="submit" name="cmtbutton" id="cmtbutton" value="등록" />
				</div>
			</div>
		</form>
		<!-- 글자수 체크 할건지? -->
		<div class="text-number">
			<p>
				<span>0</span><em>/</em>50
			</p>
		</div>
	</div>
</body>
</html>