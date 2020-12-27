<%@page import="com.semiproj.writer.model.WriterVO"%>
<%@page import="com.semiproj.bookinfo.model.BookInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<%
	//view 페이지
	List<WriterVO> list=(List<WriterVO>)request.getAttribute("list");
	
	//3
%>

	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- One -->
			<section class="wrapper style4 container">
				<div class="row gtr-150">
					<div class="col-8 col-12-narrower">

						<h1>작가목록</h1>
						<table border="1" style="width: 500px">
							<tr>
								<th>번호</th>
								<th>작가이름</th>
								<th>소개글</th>
								<th>작가사진이름</th>
								<th>작가사진원본이름</th>
							</tr>
						<%-- 	
							<%for(int i=0; i<list.size(); i++){
								
								WriterVO vo=list.get(i); %>
							<tr>
							<td><%=vo.getWrno() %></td>
							<td><%=vo.getName() %></td>
							<td><%=vo.getIntro() %></td>
							<td><%=vo.getPhotoFileName() %></td>
							<td><%=vo.getPhotoOriginFileName() %></td>
							<%} %> --%>
							
							 <c:forEach var="dto" items="${list}">
								<tr>
									<td>${dto.wrno}</td>
									<td><a
										href="<c:url value='/writer/writerPage.do?no=${dto.wrno}'/>">
											${dto.name}</a></td>
									<td>${dto.intro}</td>
									<td>${dto.photoFileName}</td>
									<td>${dto.photoOriginFileName}</td>
								</tr>
							</c:forEach>
						</table>
						<hr>
						<a href="<c:url value='/writer/writerInsert.do' /> ">작가 등록</a>

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


