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
</head>
<body>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<div class="container" id="bim">
	<br>
	<div style="border:0.1rem solid black; padding:1rem;"><!-- 도서 수정 -->
	 	 <label>도 서 명 :<input type="text" name="bookName" placeholder="책이름" ></label>
		 <label>카테고리 :<input type="number" name="categoryID" placeholder="카테고리" ></label>
		 <label>작 가 명 :<input type="text" name="author" placeholder="작가" ></label>
		 <label>출 판 사 :<input type="text" name="publisher" placeholder="출판사" ></label>
		 <label>출 판 일 :<input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" ></label>
		 <label>도서금액 :<input type="number" name="price" placeholder="금액" ></label>
		 <label>이 미 지 :<input type="text" name="imageID" placeholder="책표지 주소(.jpg)" ></label>
		 <label>총 재 고 :<input type="number" name="stock" placeholder="등록 수량" ></label>
		<br>	
	</div><br>
	<button class="btn btn-default">수정</button>	
	<button class="btn btn-default">삭제</button>
	<hr style="border: solid 0.1rem;"> 
</div>
</body>
</html>