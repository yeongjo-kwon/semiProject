<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!--좋아요 버튼 넣을지 말지-->
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no,viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Document</title>
<link rel="stylesheet" href="<c:url value='/assets/css/realcmt_detail.css'/>" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="sub-content">
		<div class="sub-inner review-profile line">
			<div class="profile">
				<p class="nickname">
					USERID님<br />한 줄 리뷰를 작성해보세요
				</p>
				<div class="image"
					style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/1825a3f0e4b85b384696d2e7421baf3f.png?type=w&amp;amp;w=160&amp;amp;quality=100');"></div>
			</div>
			<div class="register">
				<textarea placeholder="한 줄 리뷰를 남겨주세요" maxlength="50"
					class="textarea"></textarea>
				<p class="text-number">
					<span>0</span><em>/</em>50
				</p>
				<button type="button" class="gtm-review-register disabled">
					리뷰 등록하기</button>
			</div>
		</div>
		<div class="sub-inner p0 review-detail">
			<p class="review-count">총 911개</p>
			<ul class="review-list">
				<li>
	<!-- 댓글 반복문시작 -->
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/db4f442aa50321d9ac54c6aa38d432ee.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=799908"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=799908"
								class="gtm-review-lib">햇분</a>
							<!---->
							<strong class="best">Best</strong> <strong class="rank">1등</strong>
						</p>
						<span class="date">2020.06.26</span>
						<pre class="cont">후루룩읽기좋은책</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>141</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/93d6ec2469bfab95210739d5e45b8003.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2143994"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2143994"
								class="gtm-review-lib">jee2ee</a>
							<!---->
							<strong class="best">Best</strong>
							<!---->
						</p>
						<span class="date">2020.07.12</span>
						<pre class="cont">마음 따듯해지는어른동화</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>92</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/100/0b93d2c8eca4c00f36491a12c89aa710.jpg?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=1376684"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=1376684"
								class="gtm-review-lib">카리나</a>
							<!---->
							<strong class="best">Best</strong>
							<!---->
						</p>
						<span class="date">2020.06.28</span>
						<pre class="cont">단숨에읽은책</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>87</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/7e0ad9b1774addee16e33f425c74a6c7.jpg?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=1851787"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=1851787"
								class="gtm-review-lib">Slow Life</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.20</span>
						<pre class="cont">오랜만에 소설을 읽었고 따뜻했습니다</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/af909a4f8badfbaf0cfcdecd518a727f.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2804290"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2804290"
								class="gtm-review-lib">예리한 마음갑부_213093</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.20</span>
						<pre class="cont">가슴이 따뜻해지는 책입니다!</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/07203546121616933afd167a0d0d29e2.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=1442321"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=1442321"
								class="gtm-review-lib">_ 지혜로운 개미 _</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.20</span>
						<pre class="cont">오랜만에 재밌게 읽은 책</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/100/852e3c84ca1b79ee5f203579edbc28d0.jpg?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2328968"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2328968"
								class="gtm-review-lib">으바부바</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.20</span>
						<pre class="cont">
어른 동화. 엉성하지만 그래서 더 매력적인 세계관을 갖추고 있다.</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/100/900bc022b86f094eb46ff398d5485bd4.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2814368"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2814368"
								class="gtm-review-lib">jinee.p</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.20</span>
						<pre class="cont">
보면서 계속 디즈니나 픽사 같은 애니메이션으로 제작되는 상상을 하면서 읽었습니다.</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/100/ca987f1222afbdc8daefb7a471a20c1c.jpg?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2646680"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2646680"
								class="gtm-review-lib">독한 청춘_896344</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.20</span>
						<pre class="cont">상상의 나래</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/7dec4318cf135e4e84a86a67d671b4c7.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2821187"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2821187"
								class="gtm-review-lib">비비2</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.19</span>
						<pre class="cont">
마지막 ㅠㅠㅠㅠ 너무 슬퍼요. 읽을수록 재밌네요!</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/0213c765f26ab489440a8541acd3c78e.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2829017"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2829017"
								class="gtm-review-lib">책읽는 달달감자</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.19</span>
						<pre class="cont">
읽으면서 한 편의 만화 영화를 본 듯한 느낌이었어요. 가볍게 기분 전환하기 좋은 책이에요</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/ca88d8499153e358bc19b44b03c058cb.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2825860"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2825860"
								class="gtm-review-lib">새로운 고수_287151</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.19</span>
						<pre class="cont">
편하고 재밌게 쭉 읽을 수 있는 책이고 마지막엔 너무 슬퍼 한동안 울었습니다ㅎㅎ</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
				<li>
					<div class="image"
						style="background-image: url('https://ofbxchnhqinp910256.cdn.ntruss.com/160/33044ff9b83c6586061d0eb1f1c43200.png?type=w&amp;amp;w=160&amp;amp;quality=100');">
						<a href="/shelf/shelf_main.html?library_seq=2246743"
							class="gtm-review-lib"></a>
					</div>
					<div class="info">
						<p class="nickname">
							<a href="/shelf/shelf_main.html?library_seq=2246743"
								class="gtm-review-lib">ego-</a>
							<!---->
							<!---->
							<!---->
						</p>
						<span class="date">2020.12.19</span>
						<pre class="cont">보고 오열했어요 ㅠㅠ 흑흑</pre>
						<div class="review-setting">
							<p>이 리뷰가 마음에 드시나요?</p>
							<button type="button" class="like-button gtm-review-like">
								<span>0</span>
							</button>
						</div>
						<!---->
					</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>
