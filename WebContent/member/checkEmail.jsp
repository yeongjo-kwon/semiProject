<%@page import="java.sql.SQLException"%>
<%@page import="com.semiproj.member.model.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="memService" class="com.semiproj.member.model.MemberService" scope="session"></jsp:useBean>
<%
	//[1] register.jsp에서 open()에 의해 이동했음
	//=> http://localhost:9090/mystudy/member/checkId.jsp?userid=dsfa
	//[2] checkId.jsp에서 자기자신으로 post방식으로 submit
	
	//1

	request.setCharacterEncoding("utf-8");
	
	String email1=request.getParameter("email1");
	String email2=request.getParameter("email2");
	String email3=request.getParameter("email3");
	
	String email = null;
	if(email1!=null && !email1.isEmpty()){
		if(email2.equals("etc")){
			if(email3!=null && !email3.isEmpty()){
				email=email1+"@"+email3;
			}
		}else{
			email=email1+"@"+email2;
			System.out.println(email);
		}
	}
	
	int result=0;
	//2
		if(email!=null && !email.isEmpty()){
			try{
				result=memService.checkDup(email);
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
   //3
   
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이메일 중복 검사</h2><br>
   <form name="frmId" method="post" action="checkEmail.jsp">
      <label for="email">email : </label>
      <input type="text" name="email" id="email" value="<%=email1%>" title="email 입력">
      <input type="submit" id="submit" value="아이디 확인">
      <%
      if(result==MemberService.EXIST_ID){%>
         <p>이미 등록된 아이디입니다. 다른 아이디를 입력하세요.</p>
      <% 
      }else if(result==MemberService.NON_EXIST_ID){%>
         <input type="button" value="사용하기" id="btUse">
         <p>사용 가능한 아이디입니다. [사용하기] 버튼을 클릭하세요.</p>
      <%} %>
      </form>
</body>
</html>