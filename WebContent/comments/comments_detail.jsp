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
<jsp:include page="../inc/top.jsp" />
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no,viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>한 줄 평 전체 보기</title>
<link rel="stylesheet"
	href="<c:url value='/assets/css/realcmt_detail.css'/>" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery-3.5.1.min.js'/>"></script>
<script type="text/javascript">
	function button_event() {
		if (confirm("한 줄 평을 삭제하시겠습니까?") == true) { //확인
			location.href = "<c:url value='/comments/comments_delete.do?no=${param.no}'/>";
		} else { //취소
			return;
		}
	}
</script>
</head>
<body>
	<%
	//테스트 세션
		session.setAttribute("no", "1");
		session.setAttribute("bookno", "1");
		session.setAttribute("nickname", "이세미");
		session.setAttribute("img", "AvataImg");
		
		//String no = request.getParameter("no");
		String no_co = (String) session.getAttribute("no");
		//세션이랑 일치시킴 - 테스트용
		int no=Integer.parseInt(no_co);
		String nickname_c = (String) session.getAttribute("nickname");//삭제

		String bookno = (String) session.getAttribute("bookno");
		String nickname = (String) session.getAttribute("nickname");
		//String nickname_c=(String)request.getAttribute("nickname");
		String img_c = (String) session.getAttribute("img");
		CommentsService cmtservice = new CommentsService();
		CommentsVO cmtvo = new CommentsVO();

		System.out.println("nickname=" + nickname + "nickname_c=" + nickname_c);
		List<CommentsVO> commList = cmtservice.selectAllCmt(Integer.parseInt(bookno));
		System.out.println(commList);
		SimpleDateFormat commSdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		System.out.println("detail => no=" + no + " , nickname=" + nickname);
	
		 session.invalidate();
	%>
	<article id="banner"></article>
	<!-- Main -->
	<article id="main">
		<!-- One -->
		<section class="wrapper style4 container">
			<div class="row gtr-150">
				<div class="col-10 col-12-narrower">
					<!-- Content -->
					<div class="content">
						<section>
							<form action="post" class="regiter">
								<input type="text" name="bookno" id="bookno"
									value="<%=bookno%>" />
							</form>
							<div class="sub-content">
								<div class="sub-inner review-profile line">
									<div class="profile">
										<p class="nickname">
											<%=nickname%>
											님<br /> 한 줄 리뷰를 작성해보세요
										</p>
										<form method="post" name="cmtFrm"
									action="<c:url value='/comments/comments_write_ok.do'/>">
											<!-- hidden으로 변경하기 -->
									<input type="text" name="bookno" id="bookno" value="<%=bookno%>">
									<input type="text" name="nickname" id="nickname"
										value="<%=nickname_c%>" /> <input type="text" name="img_c"
										id="img_c" value="<%=img_c%>" />
			
										<div class="image" style="background-image: url('');"></div>
									</div>
									<div class="register">
										<textarea placeholder="한 줄 리뷰를 남겨주세요" maxlength="50"
											class="textarea"  id="content" name="content"></textarea>
										<p class="text-number">
											<span>0</span><em>/</em>50
										</p>
										<input type="submit" class="gtm-review-register disabled"
										 value="리뷰 등록하기" name="button" id="button">
									</div>
								</div>
								</form>
								<div class="sub-inner p0 review-detail">
									<p class="review-count">
										총
										<%=cmtservice.selectCommentsCnt(Integer.parseInt(bookno))%>개
									</p>
									<!-- 댓글 반복문시작 -->
									<%-- <c:if test="${empty commList}">
				<p>등록된 리뷰가 없습니다.</p>
			</c:if> --%>
									<c:if test="${empty commList}">
										<%
											for (int i = 0; i < commList.size(); i++) {
										%>
										<ul class="review-list">
											<li>
												<div class="image" style="background-image: url('');">
													<i class="fas fa-user-circle fa-2x solid lightgray"
														style="color: #757575"></i> <a href="#"
														class="gtm-review-lib"></a>
												</div>
												<div class="info">
													<p class="nickname">
														<a href="#" class="gtm-review-lib"><%=commList.get(i).getNickname()%></a>
														<!--1등이면-->
														<%	if (i == 0) {	%>
														<strong class="best">Best</strong> <strong class="rank">1등</strong>
														<%	}	%>
													</p>
													<span class="date"><%=commSdf.format(commList.get(i).getRegdate())%></span>
													<pre class="cont"><%=commList.get(i).getContent()%></pre>
													<div class="review-setting">
														<p>이 리뷰가 마음에 드시나요?</p>
														<button type="submit" class="like-button gtm-review-like">
															<i class="far fa-heart"></i> <span><%=365-i*6%></span>
														</button>
													</div>
													<!---->
													<!--  닉네임 일치시 삭제  -->
													<%
														if (nickname_c.equals(nickname)) {
													%>
													<div class="more-area">
															<input type="text" value="<%=commList.get(i).getNo()%>"
																name="no" id="no">
																 <input type="button"	name="button" id="delete" value="삭제하기" onclick="button_event();">
												<!-- 		</form> -->
													</div>
													<%
														}
													%>
												</div>
											</li>
										</ul>
										<%
											}
										%>
									</c:if>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="col-2 col-12-narrower">
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
							<a href="#" class="image featured">
								<!-- img -->
							</a>
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

		<!-- Two -->
		<section class="wrapper style1 container special">
			<div class="row">
				<div class="col-4 col-12-narrower">
					<section>
						<header>
							<h3>This is Something</h3>
						</header>
						<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu
							elit eget arcu commodo suscipit dolor nec nibh. Proin a
							ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
						<footer>
							<ul class="buttons">
								<li><a href="#" class="button small">Learn More</a></li>
							</ul>
						</footer>
					</section>
				</div>
				<div class="col-4 col-12-narrower">
					<section>
						<header>
							<h3>Also Something</h3>
						</header>
						<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu
							elit eget arcu commodo suscipit dolor nec nibh. Proin a
							ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
						<footer>
							<ul class="buttons">
								<li><a href="#" class="button small">Learn More</a></li>
							</ul>
						</footer>
					</section>
				</div>
				<div class="col-4 col-12-narrower">
					<section>
						<header>
							<h3>Probably Something</h3>
						</header>
						<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu
							elit eget arcu commodo suscipit dolor nec nibh. Proin a
							ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
						<footer>
							<ul class="buttons">
								<li><a href="#" class="button small">Learn More</a></li>
							</ul>
						</footer>
					</section>
				</div>
			</div>
		</section>
	</article>
	<jsp:include page="../inc/bottom.jsp" />
</body>
</html>
