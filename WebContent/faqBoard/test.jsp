<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.main {
	min-width: 320px;
	max-width: 800px;
	padding: 10px;
	border-radius: 7px;;
	background: #ffffff;
}

section {
	display: none;
	padding: 20px 0 0;
	border-top: 1px solid #ddd;
}

input {
	display: none;
}

label {
	display: inline-block;
	padding: 15px 25px;
	font-weight: 600;
	color: #bbb;
	border: 1px solid transparent;
}

label:hover {
	color: #2e9cdf;
	cursor: pointer;
}

/*input 클릭시, label 스타일*/
input:checked+label {
	color: #555;
	border: 1px solid #ddd;
	border-top: 2px solid #2e9cdf;
	border-bottom: 1px solid #ffffff;
}

#tab1:checked ~ #content1, #tab2:checked ~ #content2, #tab3:checked ~
	#content3, #tab4:checked ~ #content4 {
	display: block;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<div class="main" style="text-align: left">

		<input id="tab1" type="radio" name="tabs" checked> <label
			for="tab1">첫번째 탭</label> <input id="tab2" type="radio" name="tabs">
		<label for="tab2">두번째 탭</label>


		<section id="content1" style="margin-bottom: 20px;">tab
			menu1의 내용</section>

		<section id="content2" style="margin-bottom: 20px;">tab
			menu2의 내용</section>
</body>
</html>