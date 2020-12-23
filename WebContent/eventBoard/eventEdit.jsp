<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<title>이벤트 글 수정하기 - 첵킷아웃</title>
</head>
<body>
<div class="divForm">
<form name="frmEventEdit" method="post" action="<c:url value='/eventBoard/eventEdit_ok.do'/>" >
 <!-- 수정 시 필요한 no을 hidden으로 넣는다 -->
 <input type="hidden" name="no" value="${param.no }">
 
 <fieldset>
   <legend>이벤트게시판 글 수정</legend>
        <div class="firstDiv">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" value="${eventVo.title }" />
        </div>
        <div class="secondDiv">
            <label for="upfile">첨부파일</label>
            <input type="file" id="upfile" name="upfile"/>
        </div>
        <div>  
           <label for="content">내용</label>        
          <textarea id="content" name="content" rows="12" cols="40">${eventVo.content }</textarea>
        </div>
        <div class="center">
            <input type = "submit" value="수정"/>
            <input type = "Button" value="글목록" onclick="location.href='<c:url value="/eventBoard/eventList.do"/>'"/>          
        </div>
    </fieldset>
</form>
</div> 

<%@ include file="../inc/bottom.jsp" %>