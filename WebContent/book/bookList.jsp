<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<article id="banner"></article>
<!-- Main -->
<article id="main">
	<header class="special container">
		<span class="icon solid"></span>
		<h2>
			<strong>베스트 셀러</strong> 차트
		</h2>
		<p>가장 많이 판매된 화제의 인기작 !!</p>
	</header>
	<!-- One -->
	<section class="wrapper style4 container">
		<div class="row gtr-150">
			<div class="col-10 col-12-narrower">
				<!-- Content -->
				<div class="content">
					<section>
						<div class="divList">
							<table class="default" border="1">
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 40%;" />
									<col style="width: 20%;" />
									<col style="width: 10%;" />
								</colgroup>
								<thead>
									<tr>
										<th>표지 이미지</th>
										<th>책 제목</th>
										<th>출판사</th>
										<th>등록일</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${empty bookList}">
										<tr>
											<td colspan="5">데이터가 존재하지 않습니다.</td>
										</tr>
									</c:if>
									<c:if test="${!empty bookList}">
										<c:set var="num" value="${pageVo.num}" />
										<c:set var="curPos" value="${pageVo.curPos}" />
										<c:forEach var="i" begin="1" end="${pageVo.pageSize}">
											<c:if test="${num>=1}">
												<c:set var="bookVo" value="${bookList[curPos]}" />
												<c:set var="curPos" value="${curPos+1}" />
												<c:set var="num" value="${num-1}" />

												<tr>
													<td><img alt="표지 이미지"
														src="<c:url value='/file_upload/${bookVo.coverFileName}'/>"
														width="100px"></td>
													<td><a
														href="<c:url value='/book/bookDetail.do?no=${bookVo.no}'/>">
															${bookVo.title}</a></td>
													<td>${bookVo.publisher}</td>
													<td><fmt:formatDate value="${bookVo.regdate}"
															pattern="yyyy-MM-dd" /></td>
												</tr>
											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<div class="divPage">
							<!-- 이전 블럭 -->
							<c:if test="${pageVo.firstPage>1}">
								<a
									href="<c:url value='/book/bookList.do?curPage=${pageVo.firstPage-1}&srchCondition=${param.srchCondition}&srchKeyword=${param.srchKeyword}'/>">
									<img alt="이전 블럭으로" src="../images/first.JPG">
								</a>
							</c:if>

							<!-- 페이지 목록 -->
							<c:forEach var="i" begin="${pageVo.firstPage}"
								end="${pageVo.lastPage}">
								<c:if test="${i<=pageVo.totalPage}">
									<c:if test="${param.curPage==i}">
										<span style="color: #d1230a; font-weight: bold">${i}</span>
									</c:if>
									<c:if test="${param.curPage!=i}">
										<a
											href="<c:url value='/book/bookList.do?curPage=${i}&srchCondition=${param.srchCondition}&srchKeyword=${param.srchKeyword}'/>">
											[${i}]</a>
									</c:if>
								</c:if>
							</c:forEach>

							<!-- 다음 블럭 -->
							<c:if test="${pageVo.lastPage<pageVo.totalPage}">
								<a
									href="<c:url value='/book/bookList.do?curPage=${pageVo.lastPage+1}&srchCondition=${param.srchCondition}&srchKeyword=${param.srchKeyword}'/>">
									<img alt="이전 블럭으로" src="../images/first.JPG">
								</a>
							</c:if>
						</div>
						<div class="divSearch">
							<form name="frmSearch"
								action="<c:url value='/book/bookList.do'/>" method="post">
								<select name="srchCondition">
									<option value="title"
										<c:if test="${'title'==param.srchCondition}">
								            selected="selected"
								        </c:if>>
										제목</option>
									<option value="writer"
										<c:if test="${'writer'==param.srchCondition}">
								            selected="selected"
								        </c:if>>
										작가명</option>
									<option value="publisher"
										<c:if test="${'publisher'==param.srchCondition}">
								            selected="selected"
								        </c:if>>
										출판사</option>
								</select> <input type="text" name="srchKeyword"
									value="${param.srchKeyword}"> <input type="submit"
									value="검색">
							</form>

						</div>
						<hr>
						<div class="adminButton">
							<a class="button small" style="float: right"
								<c:set var="nickname" value="세션닉네임"/>
								<%--<c:if test="${nickname!='admin'}">
									hidden="hidden"
								</c:if>--%>
								href="<c:url value='/book/bookWrite.do'/>">책
								등록</a>
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
							vitae volutpat commodo suscipit ullamcorper commodo suscipit amet
							sed nibh. Proin a ullamcorper sed blandit..</p>
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
					<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit
						eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper
						elit, et sagittis turpis. Integer ut fermentum.</p>
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
					<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit
						eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper
						elit, et sagittis turpis. Integer ut fermentum.</p>
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
					<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit
						eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper
						elit, et sagittis turpis. Integer ut fermentum.</p>
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
<%@ include file="../inc/bottom.jsp"%>