<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String l_userid=(String)session.getAttribute("userid");
	if(l_userid==null || l_userid.isEmpty()) {%>
		<script type="text/javascript">
		alert("먼저 로그인하세요");
		location.href="<%=request.getContextPath()%>/login/login.jsp";
		</script>
<%	return;
	}
%>
</body>
</html>