<%@page import="com.semiproj.comments.model.CommentsService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
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
<script type="text/javascript">
	$(function() {
		$('#content').keyup(function(e) {
			var content = $(this).val();
			$(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
			$('#counter').html(content.length + '/50');
		});
		$('#content').keyup();
	});
</script>
<!-- 댓글 수 증가하면 카운트하는거 추가할거면 js넣기 -->
</head>
<body>

	<%
	// 데이터 나중에 삭제 - 테스트용
		session.setAttribute("no", "1");
		session.setAttribute("bookno", "2");
		session.setAttribute("nickname", "세미");
		session.setAttribute("img", "AvataImg");
		session.setAttribute("regdate", "2020-12-22");
		session.setAttribute("content", "가슴이 따뜻해지는 책입니다!");
	// 사용자 정보 읽어오기
		CommentsService cmtservice = new CommentsService();
		String bookno = (String) session.getAttribute("no");
		String img_e = (String) request.getAttribute("img");
		String email_e = (String) request.getAttribute("email_c");
	// 세션에서 읽어오기
		String email_c = (String) session.getAttribute("email");
		String nickname_c = (String) session.getAttribute("nickname");
		String img_c = (String) session.getAttribute("img");
	%>
	<!-- 유효성 검사-닉네임 추가하기 -->
	<div id="anchorReview" class="review-container thin-line">
		<form method="post" name="cmtFrm"
			action="<c:url value='/comments/comments_write_ok.do'/>">
			<!-- hidden으로 변경하기 -->
			<input type="text" name="bookno" id="bookno" value="<%=bookno%>">
			<input type="text" name="nickname" id="nickname"
				value="<%=nickname_c%>" /> <input type="text" name="img_c"
				id="img_c" value="<%=img_c%>" />

			<!-- 댓글 입력 시작 -->
			<div class="review-register">
				<div class="image" style="background-image: url('');"></div>
				<div class="register">
					<textarea placeholder="한 줄 리뷰를 남겨주세요" maxlength="50"
						class="textarea" style="height: 22px" id="content" name="content"></textarea>
					<input type="submit" class="button" id="button" value="등록" />
				</div>
			</div>
		</form>
		<!-- 글자수 체크 할건지? -->
		<div class="text-number">
			<p>
				<!-- <span id="counter">0</span><em>/</em>50 -->
				<span id="counter"></span>
			</p>
		</div>
	</div>
</body>
</html>
