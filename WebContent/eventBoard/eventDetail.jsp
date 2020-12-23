<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<script type="text/javascript">
	$(function(){
		$('#btEdit').click(function(){
			location.href="<c:url value='/eventBoard/eventEdit.do?no=${param.no}'/>";
		});
		$('#btDel').click(function(){
			if(confirm('삭제하시겠습니까?')){
				location.href="<c:url value='/eventBoard/eventDelete_ok.do?no=${param.no}'/>";
			}else{
				event.preventDefault();
			}
		});
		$('#btList').click(function(){
			location.href="<c:url value='/eventBoard/eventList.do'/>";
		});
	});
</script>
<title>책킷아웃 - 상세보기</title>
</head>
<body>
<h2>이벤트 글 상세보기</h2>
<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">제목</span> <span>${eventVo.title }</span>
		</div>
		<div>
			<span class="sp1">등록일</span> 
			<span>
				<fmt:formatDate value="${eventVo.regdate }" pattern="yyyy-MM-dd"/>
			</span>
		</div>
		<div>
			<span class="sp1">첨부파일</span>
			<c:if test="${!empty eventVo.imgFileName }">
				<img src='<c:url value="/images/file.gif"/>' alt='파일 이미지'>
			</c:if>
			<span>${fileInfo }</span>
		</div>
		<%
			pageContext.setAttribute("newLine","\r\n");
		%>
		<c:set var="content" 
			value="${fn:replace(eventVo.content,newLine,'<br>') }"/>
			
		<div class="lastDiv">		
			<p class="content">${content }</p>
		</div>
		<div class="center">
			<form>
				<input type="button" id="btEdit" value="수정">
				<input type="button" id="btDel" value="삭제">
				<input type="button" id="btList" value="목록">
			</form>		
		</div>
	</div>

<%@ include file="../inc/bottom.jsp" %>