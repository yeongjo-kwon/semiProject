<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function readTxt(){
		fetch("<c:url value='/file_upload/${bookVo.txtFileName}'/>")
		.then(function(res){
			return res.text();
		}).then(function(data){
			var content=data;
			
			function splitPage(txt, limit){
				var textArray=[];
				for(var i=0; i<(txt.length/limit+1); i++){
					textArray.splice(i, 0, txt.substr(limit*i, limit));
					if((limit*i+limit)>txt.length){
						textArray.splice(i, 0, txt.substring(limit*i, txt.length));
						break;
					}
				}
				
				return textArray;
			};
			
			var page=splitPage(content, 580);
			
			document.getElementById('txtContent1').innerHTML= page[0].replace(/\r\n/gi, "<br>"); 
			document.getElementById('txtContent2').innerHTML= page[0+1].replace(/\r\n/gi, "<br>"); 
		})
	};
</script>
<style type="text/css">
	.bookReader #txtContent1{
		padding: 70px 30px 70px 100px;
		margin: 0;
		background: rgba(0,0,0,0);
		float: left;
		width: 280px;
		font-size: 0.8em;
		display: inline;
	}
	
	.bookReader #txtContent2{
		padding: 70px 80px 70px 30px ;
		margin: 0;
		background-color: rgba(0,0,0,0);
		float: left;
		width: 280px;
		font-size: 0.8em;
		display: inline;
	}
	
	body.bookReader{ margin: 0; }
	
	div.bookRead{
		width: 800px;
		height: 600px;
		text-align: center;
		margin: 0;
		background-image: url("<c:url value='/assets/css/images/emptyBook.jpg'/>");
		background-size: 800px;
		background-repeat: no-repeat;
		display: inline-block;
	}
</style>
<title>책 읽기</title>
</head>
<body class="bookReader" onload="readTxt()">
	<div class="bookRead">
		<div id="txtContent1"></div>
		<div id="txtContent2"></div>
	</div>
</body>
</html>