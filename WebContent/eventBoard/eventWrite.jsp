<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<article id="banner"></article>
	<!-- Main -->
	<article id="main">
		<!-- One -->
		<section class="wrapper style4 container">
			<!-- Content -->
			<div class="divForm" >
				<form name="frmEventWrite" method="post"
						action="<c:url value='/eventBoard/eventWrite_ok.do'/>" >
					<fieldset>
					   	<legend><strong>이벤트</strong> 글쓰기</legend>
					   	<br><br><br>
					    <div class="firstDiv">
				            <label for="title">제목</label>
				            <input type="text" id="title" name="title"  />
				        </div><br>
				        <div>  
				        	<label for="content">내용</label>        
				        	<textarea id="content" name="content" rows="12" cols="40"></textarea>
				        </div>
				        <div class="center">
				            <input type = "submit" value="등록"/>
				            <input type = "button" value="글목록" />         
				        </div>
			    	</fieldset>
				</form>
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

				</article>
<%@ include file="../inc/bottom.jsp" %>