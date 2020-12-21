<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/top.jsp" %>
			<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<header>
						<h2>책킷아웃</h2>
					</header>
					<p>책킷아웃에서 <b>새로운 이야기</b>가<br />
					 당신을 기다립니다.</p>
					<footer>
							<ul class="buttons stacked">
								<li><a href="#main" class="button fit scrolly">Tell Me More</a></li>
							</ul>
						</footer>
				</div>
			</section>

			<!-- Main -->
			<article id="main">
				<header class="special container">
					<h2>수많은 이야기들을 <strong>누구보다도 먼저</strong> 읽어보세요<br></h2>
					<p>책킷아웃에서는 <strong>신간 소개</strong>와 <strong>인기 작가</strong>들의 작품을<br>
					가장 먼저 만나보실 수 있습니다.<br />
					간편하게 온라인에서도, 오프라인에서도 언제든 책을 읽을 수 있는 환경을 지향합니다.<br /></p>
				</header>
				
				<section class="wrapper style1 container special">
					<div id="carouselExampleIndicators" class="carousel slide"
								data-bs-ride="carousel">
						<ol class="carousel-indicators">
							<li data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active"></li>
							<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
							<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="images/pic02.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="images/pic02.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="images/pic02.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span></a>
						<a class="carousel-control-next" href="#carouselExampleIndicators"
							role="button" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span></a>
					</div>
				</section>
			<!-- 베스트 셀러 -->
				<section class="wrapper style3 container special">
					<header class="major">
						<h2><strong>베스트셀러</strong> Top3</h2>
					</header>
					<div class="row">
						<div class="col-12 col-12-narrower">
							<section>
								<div class="imgBlock">
									<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
								</div>
								<header>
									<h3>책 제목</h3>
								</header>
								<p>책 소개</p>
							</section>
						</div>
					</div>
					<footer class="major">
						<ul class="buttons">
							<li><a href="<c:url value='/book/bookList.do'/>" class="button">See More</a></li>
						</ul>
					</footer>
				</section>
			</article>
			<!-- CTA -->
				<section id="cta">
					<header>
						<h2>AA</h2>
						<p>bb</p>
					</header>
					<footer>
						<ul class="buttons">
							<li><a href="#" class="button primary">ok</a></li>
							<li><a href="#" class="button">cancel</a></li>
						</ul>
					</footer>
				</section>
				
<%@ include file="inc/bottom.jsp" %>