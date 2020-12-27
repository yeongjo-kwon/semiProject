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
					<input type="checkbox" id="answer01"> <label for="answer01">
						[서비스 이용]도서를 검색하였으나 나오지 않아요. <em></em>
					</label>
					<div>
						<p>
							책킷아웃은 제휴 및 계약이 진행된 출판사와 저자의 도서를 제공해 드리고 있습니다.<br>기존 도서 시장과
							다른 형식의 스트리밍 서비스를 제공하다보니 모든 도서 제공에 어려움이 있는데요,<br> 아직 등록되지 않은
							도서를 확보하기 위해 출판사에 지속적으로 요청 중입니다.<br> 더욱 많은 도서를 준비할 수 있도록 최선을
							다하겠습니다.
						</p>
					</div>
					<input type="checkbox" id="answer02"> <label for="answer02">
						[서비스 이용]가입하였으나 도서를 읽을 수가 없어요.<em></em>
					</label>
					<div>
						<p>
							혹시 책킷아웃의 회원이 아니신가요?<br> 회원가입을 통해 회원이 되신 분에 한해 책킷아웃의 도서를 만나보실
							수 있어요.
						</p>
					</div>
					<input type="checkbox" id="answer03"> <label for="answer03">
						[서비스 이용]검색되는 모든 도서는 종이책으로 구매 가능한가요?<em></em>
					</label>
					<div>
						<p>
							아쉽게도 책킷아웃은 뷰어 기능만 제공하고 있어요.<br> 이용에 착오 없으시길 바랍니다.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
</article>
<%@ include file="../inc/bottom.jsp"%>