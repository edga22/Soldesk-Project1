<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
#imain tr{
	height:1rem;
}
#imain th{
	width: 7rem;
}
#imain td{
	width: 20rem;
}
</style>
</head>
<body>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<div class="container" id="bim">
	<br>
	<div style="border:0.1rem solid black; padding:1rem; margin:1rem;"><!-- 도서 수정 -->
		<table id="imain">
			<tr>
				<th>도 서 명 :</th><td><input type="text" name="bookName" placeholder="책이름" ></td>
				<th>작 가 명 :</th><td><input type="text" name="author" placeholder="작가" ></td>
				<th>출 판 사 :</th><td><input type="text" name="publisher" placeholder="출판사" ></td>
			</tr>
			<tr>		
				<th>출 판 일 :</th><td><input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" ></td>
				<th>도서금액 :</th><td><input type="number" name="price" placeholder="금액" ></td>
				<th>총 재 고 :</th><td><input type="number" name="stock" placeholder="등록 수량" ></td>
			</tr>
			<tr>
				<th>이 미 지 :</th><td><input type="text" name="imageID" placeholder="책표지 주소(.jpg)" ></td>							
				<th>카테고리 :</th><td><jsp:include page="/inven/categorySelect.jsp"/></td>
				<th>추천상태</th><td><input type="number" name="recomend" placeholder="추천상태(1:추천, 0:비추천)" ></td>
			</tr>
		</table>
	</div>
	<button class="btn btn-default">수정</button>	
	<button class="btn btn-default">삭제</button>
	<hr style="border: solid 0.1rem;"> 
</div>
</body>
</html>