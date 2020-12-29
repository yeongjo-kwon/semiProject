<%@page import="java.sql.SQLException"%>
<%@page import="com.semiproj.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<article id="banner"></article>

<!-- Main -->
<article id="main">
	<header class="special container">
	</header>

	<!-- One -->
	<section class="wrapper style4 container">
		<div class="row gtr-150">
			<div class="col-10 col-12-narrower">
				<!-- Content -->
				<div class="content">
<div class="registForm">

<script type="text/javascript" src="../assets/js/member.js"></script>
<jsp:useBean id="memService" class="com.semiproj.member.model.MemberService" scope="session"></jsp:useBean>
<%
	String userid = (String) session.getAttribute("userid");

	MemberVO vo = null;
		try {
			vo = memService.selectMember(userid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	String zipcode = vo.getZipcode();
	String address = vo.getAddress();
	String addressDetail = vo.getAddressDetail();
	if (zipcode == null)
		zipcode = "";
	if (address == null)
		address = "";
	if (addressDetail == null)
		addressDetail = "";
	
	String hp = vo.getHp();
	String email = vo.getEmail();
	String hp1 = "", hp2 = "", hp3 = "";
	String email1 = "", email2 = "", email3 = "";
	if (hp != null && !hp.isEmpty()) { //010-100-2000
		String[] hpArr = hp.split("-");
		hp1 = hpArr[0]; //010
		hp2 = hpArr[1]; //100
		hp3 = hpArr[2]; //2000
	}

	String[] emailList = { "naver.com", "hanmail.net", "nate.com", "gmail.com" };
	
	int count = 0;
	boolean isEtc = false; //직접입력이 아닌 경우 false
	if (email != null && !email.isEmpty()) { //h@nate.com(콤보 안), k@herb.com(직접입력)
		String[] emailArr = email.split("@");
		email1 = emailArr[0]; //h, k
		email2 = emailArr[1]; //nate.com, herb.com
	
		//for문 돌려서 일치하는게 있다면 count++
		for (int i = 0; i < emailList.length; i++) {
			if (email2.equals(emailList[i])) {
		count++;
		break;
			}
		} //for
	
		//count값에 따라서 직접입력이다 / 아니다 구분
		if (count == 0) {
			isEtc = true; //직접입력
		}
	}
%>

<script language="Javascript">
	String email="";
	if(email1!=null && !email1.isEmpty()){
		if(email2.equals("etc")){
			if(email3!=null && !email3.isEmpty()){
				email=email1+"@"+email3;
			}
		}else{
			email=email1+"@"+email2;
		}
	}
</script>

<form name="frm1" method="post" action="<c:url value='/member/memberEdit_ok.do'/>">
	<fieldset>
		<legend>회원 수정</legend>
			<input type="hidden" name="chkEmail" id="chkEmail">
			<input type="hidden" name="chkNick" id="chkNick">
			<input type="text" name="email" id="email" value="${param.email}" }>
		<br><br><br>
		<div>
			<label for="email1">이메일 주소</label> 
			<input type="text" name="email1" id="email1" title="이메일주소 앞자리"> @ 
				<select name="email2" id="email2" title="이메일주소 뒷자리">
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="etc">직접입력</option>
				</select> 
			<input type="text" name="email3" id="email3" title="직접입력인 경우 이메일주소 뒷자리" style="visibility: hidden">
			<input type="button" value="중복확인" id="btnChkemail" title="새창열림">
		</div><br><br>
		<div>
			<label for="name">성명</label> 
			<span><%=vo.getName() %></span>
		</div><br><br>
		<div>
			<label for="nickname">닉네임</label> 
			<span><%=userid %></span>&nbsp; 
			<input type="button" value="중복확인" id="btnChknick" title="새창열림">
		</div><br><br>
		
		<div>
			<label for="pwd">비밀번호</label> 
			<input type="Password" name="pwd" id="pwd">
		</div><br><br>
		<div>
			<label for="pwd2">비밀번호 확인</label> 
			<input type="Password" name="pwd2" id="pwd2">
		</div><br><br><br><br>
		
		<div>
			<label for="zipcode">주소</label> 
			<input type="text" name="zipcode" id="zipcode" ReadOnly title="우편번호" class="width_80">
			<input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림"><br />
			<span class="sp1"></span> 
			<input type="text" name="address" ReadOnly title="주소" class="width_350"><br /> 
			<span class="sp1"></span> 
			<input type="text" name="addressDetail" title="상세주소" class="width_350">
		</div><br><br><br>
		<div class="hpDiv">
			<label for="hp1">핸드폰</label>
			<select name="hp1" id="hp1" title="휴대폰 앞자리">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select> -
			<input type="text" name="hp2" id="hp2" maxlength="4"
					title="휴대폰 가운데자리"> - 
			<input type="text" name="hp3" id="hp3" maxlength="4"
					title="휴대폰 뒷자리">
		</div><br><br><br><br>
		<div class="center">
			<input type="submit" id="wr_submit" value="회원가입">
		</div>
	</fieldset>

	
</form>
	
</div>
		</div>
			</div>
			<div class="col-2 col-12-narrower">
				<!-- Sidebar -->
				<div class="sidebar">
					<section>
						<header>
							<h3>Magna Feugiat</h3>
						</header>
						<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit..</p>
						<footer>
							<ul class="buttons">
								<li><a href="#" class="button small">Learn More</a></li>
							</ul>
						</footer>
					</section>
					<section>
						<a href="#" class="image featured"><!-- img --></a>
						<header>
							<h3>Amet Lorem Tempus</h3>
						</header>
						<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper sed blandit lorem ipsum dolore.</p>
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
					<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
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
					<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
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
					<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
					<footer>
						<ul class="buttons">
							<li><a href="#" class="button small">Learn More</a></li>
						</ul>
					</footer>
				</section>
			</div>
		</div>
	</section>




<%@ include file="../inc/bottom.jsp" %>