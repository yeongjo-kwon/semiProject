<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
			src="<c:url value='/assets/js/jquery-3.5.1.min.js'/>"></script>
</head>
<body>
<%
	String msg=(String)request.getAttribute("msg");
	String url=(String)request.getAttribute("url");
	String result=(String)request.getAttribute("url");
	String email=(String)request.getAttribute("email");
	request.setAttribute("email", email);
	
	
	String ctxPath=request.getContextPath(); //=> /mystudy
	
	url=ctxPath+url; //=> /mystudy/index.jsp
%>

<script type="text/javascript">
	var result = confirm("<%=msg%>");
	
	if (result) {
		$(opener.document).find("#chkEmail").val("Y");
<%-- 		<%request.setAttribute("email", email);
		System.out.println("바뀐 emai?"+email);
		%> --%>
		self.close();
	} else{
		alert("회원가입 화면으로 돌아갑니다.");
		self.close();
	}

</script>
</body>
</html>