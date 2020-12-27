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
					<input type="checkbox" id="answer08"> <label for="answer08">
						[기타]출판사 콘텐츠 공급 문의를 하고 싶어요.<em></em>
					</label>
					<div>
						<p>
							콘텐츠 공급 제휴 문의는 아래 이메일 주소로 접수 부탁드립니다.<br> 확인 후 자세하게 안내 드리겠습니다.<br>
							<br> ㆍ콘텐츠 공급 제휴 문의 : beiron@bookitout.com
						</p>
					</div>
					<input type="checkbox" id="answer09"> <label for="answer09">
						[기타]기타 궁금한 점이 있어요.<em></em>
					</label>
					<div>
						<p>
							등록된 FAQ외 궁금하신 부분이 있으시다면 언제든지 전화문의로 접수해주세요.<br> 상세히 확인하여
							안내드리겠습니다.
						</p>
					</div>

				</div>
			</div>
		</div>
	</section>
</article>
<%@ include file="../inc/bottom.jsp"%>