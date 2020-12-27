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
          var mapContainer = document.getElementById('map'), // ������ ǥ���� div
            mapOption = {
              center: new kakao.maps.LatLng(
                37.498911100975185,
                127.03195344212064
              ), // ������ �߽���ǥ
              level: 3, // ������ Ȯ�� ����
            };

          var map = new kakao.maps.Map(mapContainer, mapOption);

          // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�
          var markerPosition = new kakao.maps.LatLng(
            37.498911100975185,
            127.03195344212064
          );

          // ��Ŀ�� �����մϴ�
          var marker = new kakao.maps.Marker({
            position: markerPosition,
          });

          // ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
          marker.setMap(map);

          var iwContent =
              '<div style="padding:5px;">ýŶ�ƿ�<br><a href="#" style="color:blue" target="_blank" class="">ū��������</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">��ã��</a></div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
            iwPosition = new kakao.maps.LatLng(
              37.498911100975185,
              127.03195344212064
            ); //���������� ǥ�� ��ġ�Դϴ�

          // ���������츦 �����մϴ�
          var infowindow = new kakao.maps.InfoWindow({
            position: iwPosition,
            content: iwContent,
          });

          // ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
          infowindow.open(map, marker);
        </script>
		</div>
		<br />
		<div class="customerDiv">
			<div class="white_box"
				style="margin-top: 20px; border-top: 1px solid #ddd">
				<h3>�� �ܿ� �ñ��Ͻ� ���� �Ʒ��� ������ �ּ���</h3>
				<div class="flex-area">
					<a href="./qna_entry.html" class="btn_btype">1:1 �����ϱ�</a> <a
						href="mailto:business@millie.town" target="_blank"
						class="btn_btype">������/���� ����</a>
				</div>
				<div class="flex-area">
					<a href="mailto:beiron@millie.town" target="_blank"
						class="btn_btype">������ ���� ����</a> <a
						href="/customer/qna_write.html?common_code_seq=903"
						class="btn_btype">B2B ���� ����</a>
				</div>
			</div>

			<div>
				<a class="white_box openBrowser" href="tel:070-7510-5415">
					<h3 class="font-weight-bold">������ 070-7510-5415</h3>
					<p>
						���� 10:00 ~ 18:00 (���ɽð� 13:00 ~ 14:00)<br /> ��/��/������ Day off
					</p>
				</a>
			</div>
			<div class="white_box" style="padding: 0 0 20px">
				<p>
					���ڷγ�19�� ���� ������ ��� �ּ�ȭ �ϰ� �ֽ��ϴ�.<br /> ��ȭ ������ ������ <b>1:1 �����ϱ�</b>��
					�̿����ּ���.
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