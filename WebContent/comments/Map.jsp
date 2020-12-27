<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="<c:url value='/css/Map.css'/>" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
</head>
<body>
<jsp:include page="../inc/top.jsp"/>
<article id="banner"></article>
	<!-- Main -->
	<article id="main">
		<!-- One -->
		<section class="wrapper style4 container">
			<div class="row gtr-150">
				<div class="col-10 col-12-narrower">
					<!-- Content -->
					<div class="content">
								<section>
		<div id="map" style="width: 100%; height: 350px">
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9d71171c0f73b7fc048f620acf5c061"></script>
		<script type="text/javascript">
          var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
              center: new kakao.maps.LatLng(
                37.498911100975185,
                127.03195344212064
              ), // 지도의 중심좌표
              level: 3, // 지도의 확대 레벨
            };

          var map = new kakao.maps.Map(mapContainer, mapOption);

          // 마커가 표시될 위치입니다
          var markerPosition = new kakao.maps.LatLng(
            37.498911100975185,
            127.03195344212064
          );

          // 마커를 생성합니다
          var marker = new kakao.maps.Marker({
            position: markerPosition,
          });

          // 마커가 지도 위에 표시되도록 설정합니다
          marker.setMap(map);

          var iwContent =
              '<div style="padding:5px;">첵킷아웃<br><a href="#" style="color:blue" target="_blank" class="">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(
              37.498911100975185,
              127.03195344212064
            ); //인포윈도우 표시 위치입니다

          // 인포윈도우를 생성합니다
          var infowindow = new kakao.maps.InfoWindow({
            position: iwPosition,
            content: iwContent,
          });

          // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
          infowindow.open(map, marker);
        </script>
		</div>
		<br />
		<div class="customerDiv">
			<div class="white_box"
				style="margin-top: 20px; border-top: 1px solid #ddd">
				<h3>그 외에 궁금하신 점은 아래로 문의해 주세요</h3>
				<div class="flex-area">
					<a href="./qna_entry.html" class="btn_btype">1:1 문의하기</a> <a
						href="mailto:business@millie.town" target="_blank"
						class="btn_btype">마케팅/제휴 문의</a>
				</div>
				<div class="flex-area">
					<a href="mailto:beiron@millie.town" target="_blank"
						class="btn_btype">콘텐츠 공급 문의</a> <a
						href="/customer/qna_write.html?common_code_seq=903"
						class="btn_btype">B2B 관련 문의</a>
				</div>
			</div>

			<div>
				<a class="white_box openBrowser" href="tel:070-7510-5415">
					<h3 class="font-weight-bold">고객센터 070-7510-5415</h3>
					<p>
						평일 10:00 ~ 18:00 (점심시간 13:00 ~ 14:00)<br /> 토/일/공휴일 Day off
					</p>
				</a>
			</div>
			<div class="white_box" style="padding: 0 0 20px">
				<p>
					※코로나19로 인해 고객센터 운영을 최소화 하고 있습니다.<br /> 통화 연결이 어려우니 <b>1:1 문의하기</b>를
					이용해주세요.
				</p>
			</div>
</div>
</section>
</div>
</div>

					<div class="col-2 col-12-narrower">
					<!-- Sidebar -->
					<div class="sidebar">
						<section>
							<header>
								<h3>Magna Feugiat</h3>
							</header>
							<p>Sed tristique purus vitae volutpat commodo suscipit amet
								sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus
								vitae volutpat commodo suscipit ullamcorper commodo suscipit
								amet sed nibh. Proin a ullamcorper sed blandit..</p>
							<footer>
								<ul class="buttons">
									<li><a href="#" class="button small">Learn More</a></li>
								</ul>
							</footer>
						</section>
						<section>
							<a href="#" class="image featured">
								<!-- img -->
							</a>
							<header>
								<h3>Amet Lorem Tempus</h3>
							</header>
							<p>Sed tristique purus vitae volutpat commodo suscipit amet
								sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus
								vitae volutpat commodo suscipit ullamcorper sed blandit lorem
								ipsum dolore.</p>
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
						<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu
							elit eget arcu commodo suscipit dolor nec nibh. Proin a
							ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
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
						<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu
							elit eget arcu commodo suscipit dolor nec nibh. Proin a
							ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
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
						<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu
							elit eget arcu commodo suscipit dolor nec nibh. Proin a
							ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
						<footer>
							<ul class="buttons">
								<li><a href="#" class="button small">Learn More</a></li>
							</ul>
						</footer>
					</section>
				</div>
			</div>
		</section>
</article>
	<jsp:include page="../inc/bottom.jsp" />
</body>
</html>