<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>이벤트 - 책킷아웃</title>
<%@ include file="../inc/top.jsp"%>

<script type="text/javascript">
	$(function() {
		$('#btEdit')
				.click(
						function() {
							location.href = "<c:url value='/eventBoard/eventEdit.do?no=${param.no}'/>";
						});
		$('#btDel')
				.click(
						function() {
							if (confirm('삭제하시겠습니까?')) {
								location.href = "<c:url value='/eventBoard/eventDelete_ok.do?no=${param.no}'/>";
							} else {
								event.preventDefault();
							}
						});
		$('#btList').click(function() {
			location.href = "<c:url value='/eventBoard/eventList.do'/>";
		});
	});
</script>
<article id="banner"></article>
<!-- Main -->
<article id="main">
	<!-- One -->
	<section class="wrapper style4 container">
		<div class="row gtr-150">
			<div class="col-10 col-12-narrower">
				<h2>ALL ABOUT EVENT</h2>
				<div class="divForm">
					<div class="eventDiv">
						<span class="sp1">제목</span> <span>${eventVo.title }</span>
					</div>
					<div class="eventDiv">
						<span class="sp1">등록일</span> <span> <fmt:formatDate
								value="${eventVo.regdate }" pattern="yyyy-MM-dd" />
						</span>
					</div>
					<div class="eventDiv">
						<span class="sp1">첨부파일</span>
						<c:if test="${!empty eventVo.imgFileName }">
							<img src='<c:url value="/images/file.gif"/>' alt='파일 이미지'>
							<span><a
								href="<c:url value='/eventBoard/eventDownCount.do?no=${param.no }&imgFileName=${eventVo.imgOriginFileName }'/>">
									${eventVo.imgOriginFileName }</a> 다운: ${eventVo.downCount}</span>
						</c:if>
					</div>
					<%
						pageContext.setAttribute("newLine", "\r\n");
					%>
					<c:set var="content"
						value="${fn:replace(eventVo.content,newLine,'<br>') }" />

					<div class="eventDiv">
						<p class="content">${content }</p>
					</div>
					<div class="center">
						<form>
							<input type="button" id="btEdit" value="수정"> <input
								type="button" id="btDel" value="삭제"> <input
								type="button" id="btList" value="목록">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</article>
<%@ include file="../inc/bottom.jsp"%>