<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/faq.css'/>">

<article id="banner"></article>
<!-- Main -->
<article id="main">
	<header class="special container">
		<span class="icon solid"></span>
		<h2>
			<strong>FAQ</strong> 자주 하는 질문
		</h2>
	</header>
	<!-- One -->
	<section class="wrapper style4 container">
		<div class="row gtr-150">
			<div class="col-12 col-12-narrower">
			<a href="<c:url value='/faqBoard/faqView.do'/>">전체</a>
			<a href="<c: url value='/faqBoard/faqService.jsp'/>">서비스 이용</a>
			<a href="<c: url value='/faqBoard/faqMember.jsp'/>">회원</a>
			<a href="<c: url value='/faqBoard/faqEtc.jsp'/>">기타</a>
				<div class="accordion">
					<input type="checkbox" id="answer04"> <label for="answer04">
						[회원]회원탈퇴는 어떻게 하나요?<em></em>
					</label>
					<div>
						<p>
							회원 탈퇴는 홈페이지에 로그인하여 [마이페이지 > 정보변경]에서 '회원탈퇴' 메뉴를 눌러주시면 탈퇴내용 안내확인 및
							동의 후 진행이 가능합니다.<br> 회원 탈퇴가 되면 내 서재, 최근 본 책 등의 정보가 삭제되며, 탈퇴한
							아이디로는 재가입이 불가능합니다.<br> 단, 관련 법령에 따라 책킷아웃의 정보보호정책 <8. 개인정보의
							보유 및 이용기간>에 명시되어 있는 보관 의무를 가지는 정보는 관련 법령이 규정한 기간 동안 보존됩니다.
						</p>
					</div>
					<input type="checkbox" id="answer05"> <label for="answer05">
						[회원]미성년자는 이용상의 제한이 있나요?<em></em>
					</label>
					<div>
						<p>
							미성년자도 가입하여 서비스 이용이 가능합니다.<br> 다만, 법규에 따라 19금 도서/수익이 발생하는 구독
							서비스 등 일부 제한이 있습니다.
						</p>
					</div>
					<input type="checkbox" id="answer06"> <label for="answer06">
						[회원]해외에서도 가입할 수 있나요?<em></em>
					</label>
					<div>
						<p>
							네, 해외에서도 국내와 동일하게 가입하여 이용하실 수 있습니다.<br> 다만 위치에 따라 네트워크 환경이
							다르기에 도서 다운로드 등에 많은 시간이 소요될 수 있으니 참고하여 이용 바랍니다.
						</p>
					</div>
					<input type="checkbox" id="answer07"> <label for="answer07">
						[기타]사업/제휴 문의는 어떻게 하나요?<em></em>
					</label>
					<div>
						<p>
							담당부서가 마련되어 있어 아래 이메일로 접수 부탁드립니다.<br> 접수 시 문의내용과 연락처, 제안서 등
							상세히 남겨주시면 확인 후 안내드리겠습니다.<br> <br> ㆍ사업 제휴 문의 :
							business@bookitout.com
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
</article>
<%@ include file="../inc/bottom.jsp"%>