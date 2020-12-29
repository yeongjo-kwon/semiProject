<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>작가 대표작품</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
<article id="banner"></article>
<!-- Main -->
<article id="main">

	<script type="text/javascript">
	$(function(){
		$('#writer_submit').click(function(){
			if($('#name').val().length<1){
				alert('작가 이름을 입력하세요');
				$('#name').focus();
				event.preventDefault();
			}else if($('#intro').val().length<1){
				alert('작가 소개를 입력하세요');
				$('#intro').focus();
				event.preventDefault();
			}
		})
	});
</script>

	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- One -->
			<section class="wrapper style4 container">
				<div class="row gtr-150">
					<div class="col-8 col-12-narrower">

						<h1>작가등록</h1>
						<form action='<c:url value="/writer/writerInsert_ok.do" />'
							name="frmWrite" method="post" enctype="multipart/form-data">
							<label for="name">작가명</label><br> 
							<input type="text" name="name" id="name"><br> 
							<label for="intro">작가 소개글</label> <br> 
							<input type="text" name="intro" id="intro"><br>
							<br> 
							<label for="intro">작가 이미지</label><br> 
							<input type="file" value="파일 선택" id="writerUpload" name="writerUpload" /><br>
							<br> 
							<input type="submit" id="writer_submit" value="전송"><br>
							
							<a href="<c:url value='/writer/writerList.do' /> ">
								작가	목록</a><br>	
						</form>
					</div>
				</div>
			</section>
		</div>





		<!-- Scripts -->
		<script src="../assets/js/jquery.min.js"></script>
		<script src="../assets/js/jquery.dropotron.min.js"></script>
		<script src="../assets/js/jquery.scrolly.min.js"></script>
		<script src="../assets/js/jquery.scrollgress.min.js"></script>
		<script src="../assets/js/jquery.scrollex.min.js"></script>
		<script src="../assets/js/browser.min.js"></script>
		<script src="../assets/js/breakpoints.min.js"></script>
		<script src="../assets/js/util.js"></script>
		<script src="../assets/js/main.js"></script>
	</body>
</html>
<%@ include file="../inc/bottom.jsp"%>


