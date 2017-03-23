<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 상세페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container"><br><br>
<div class="row">
	<div class="col-lg-2"></div>
	<div class="col-lg-6" style="border:solid 0.1rem; margin:1rem; padding:1rem;">
<!-- 12열을 나눠서 가운데 4열만 상세페이지로 사용 -->					
			<button type="button" class="close" align="rignt" onClick="window.close()">X</button>
			<h3>자존감 수업(2017년 최신개정판)</h3>	
			<div style="bor\der: black solid 0.1rem; margin:2rem; padding:2rem;">
				<img src="img/book1.jpg" style="width:150px;height:200px; float:left; margin:3rem;">
				<br>
				<div>
				책제목 : 자존감수업<br>
				출판사 : 미디어북스<br>
				출판일 : 2017-01-02<br>
				저  자 : 윤홍균<br>	
				금  액 : 12500원
				<hr style="border: solid 0.1rem;">
				배송료 : 2500원(1만원 이상시 무료)<br>
				수령 예상일 : 온라인 주문시 2일 소요<br>
				         (오프라인 방문시 당일 수령가능)
				<hr style="border: solid 0.1rem;">			
				</div>
			</div>
			수량 : <input type="number" style="width:10rem;"><br><br>
			<div align="left">			
			<a href="#" class="btn btn-default">즉시 구매</a>
			<a href="#" class="btn btn-default">찜하기</a>
			<button type="button" class="close" align="rignt" onClick="window.close()">닫기</button>
			</div>
						
		</div>	
	</div>
</div>

</body>
</html>