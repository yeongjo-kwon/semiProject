<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>main.jsp</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="<c:url value='/assets/css/main.css'/>" />
		<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>" />
		<noscript><link rel="stylesheet" href="<c:url value='/assets/css/noscript.css'/>"/></noscript>
		<script type="text/javascript"
			src="<c:url value='/assets/js/jquery-3.5.1.min.js'/>"></script>
	</head>
	<body class="index is-preload">
		<div id="page-wrapper">

			<!-- Header -->
			<header id="header" class="alt">
				<h1 id="logo">
					<a href="<c:url value='/main.do'/>">책<span>킷아웃</span></a>
				</h1>
				<nav id="nav">
					<ul>
						<li class="current"><a href="main.jsp">님 환영합니다!</a></li>
						<li class="submenu">
							<a href="#">Menu</a>
							<ul>
								<li><a href="<c:url value='/book/bookList.do'/>">Ebook</a></li>
								<li><a href="<c:url value='/writer/writerList.do'/>">Writer</a></li>
								<li><a href="<c:url value='/eventBoard/eventList.do'/>">Event</a></li>
								<li><a href="<c:url value='/faqBoard/faqView.do'/>">FAQ</a></li>
								<li><a href="<c:url value='/comments/Map.jsp'/>">Info</a></li>
								<li><a href="<c:url value=''/>">MyPage</a></li>
							</ul>
						</li>
						<li><a href="#" class="button primary">Log-in</a></li>
					</ul>
				</nav>
			</header>
