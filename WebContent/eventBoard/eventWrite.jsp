<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<script type="text/javascript">
	$(function(){
		$('#title').focus(); //제목에 포커스 맞추기
		
		$('form[name=frmEventWrite]').find('input[type=button]').click(function(){
			location.href='<c:url value="/eventBoard/eventList.do"/>';
		});
		
		//null체크
		$('.divForm').submit(function(){
			if($('#title').val().length<1){
				alert('제목을 입력하세요.');
				$('#title').focus();
				event.preventDefault();
			}else if($('#content').val().length<1){
				alert('내용을 입력하세요.');
				$('#content').focus();
				event.preventDefault();
			}
		});
	});
</script>
<title>책읽아웃 - 이벤트 게시판</title>
</head>
<body>

<div class="divForm">
<form name="frmEventWrite" method="post" action="<c:url value='/eventBoard/eventWrite_ok.do'/>" 
	enctype="multipart/form-data">
 <fieldset>
   <legend>이벤트 글쓰기</legend>
        <div class="firstDiv">
            <label for="title">제목</label>
            <input type="text" id="title" name="title"  />
        </div>
        <div class="secondDiv">
            <label for="upfile">첨부파일</label>
            <input type="file" id="upfile" name="upfile"  />
        </div>
        <div>  
           <label for="content">내용</label>        
          <textarea id="content" name="content" rows="12" cols="40"></textarea>
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" value="글목록" />         
        </div>
    </fieldset>
</form>
</div>  

<%@ include file="../inc/bottom.jsp" %>