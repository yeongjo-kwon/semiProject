<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>작가 소개</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<article id="banner"></article>
<!-- Main -->
<article id="main">

<body class="right-sidebar is-preload">

		<!-- One -->
		<br><br><br><br><br>
				<section class="wrapper style4 container">

				<div class="row gtr-150">
					<div class="col-8 col-12-narrower">

						<!-- Content -->
						<a href="<c:url value='/writer/writerPage.do?no=${param.no }' />">
						<button type="button" style:background-color="yellow" class="btn btn-primary btn-lg">
						작가소개</button>
						</a>
						<a href="<c:url value='/writer/writerBook.do?wrno=${param.no }' />">
						<button type="button" class="btn btn-secondary btn-lg">
						대표작품</button>
						</a>
						<div class="content">
							<section>
								<a href="#" class="image featured">
								<img src="images/pic03.jpg" alt="" /></a>
								<header>
									<h3>작가 소개</h3>
								</header>
								<img src="../images/${vo.photoFileName}" width="400" height="400" ><br> 
							 	<span>${vo.name}</span><br>
								<span>${vo.intro}</span>

							</section>
						</div>

					</div>
					<div class="col-4 col-12-narrower">

					<!-- Sidebar -->
					<div class="sidebar">
						<section>
							<header>
								<h3>Magna Feugiat</h3>
							</header>
							<p>Sed tristique purus vitae volutpat commodo suscipit amet
								sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus
								vitae volutpat commodo suscipit ullamcorper commodo suscipit
								amet sed nibh. Proin a ullamcorper sed blandit..</p>
							<footer>
								<ul class="buttons">
									<li><a href="#" class="button small">Learn More</a></li>
								</ul>
							</footer>
						</section>

						<section>
							<a href="#" class="image featured"><img
								src="images/pic04.jpg" alt="" /></a>
							<header>
								<h3>Amet Lorem Tempus</h3>
							</header>
							<p>Sed tristique purus vitae volutpat commodo suscipit amet
								sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus
								vitae volutpat commodo suscipit ullamcorper sed blandit lorem
								ipsum dolore.</p>
							<footer>
								<ul class="buttons">
									<li><a href="#" class="button small">Learn More</a></li>
								</ul>
							</footer>
						</section>
					</div>

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


