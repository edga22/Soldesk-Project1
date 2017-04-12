<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 추가</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/inven/invenMain.jsp"></jsp:include>
<div class="container">
<h4 class="modal-title">도서 추가</h4>
	<form action="/inven/bookAddProc.jsp">
	<div style="width:30rem;">
		<div align="right">         
		  <ul style=" list-style:none">		 
		   <li> 도 서 명:<input type="text" name="bookName" placeholder="책이름" required></li>
		   <li> 카테고리:<input type="number" name="categoryID" placeholder="카테고리" required></li>			  
		   <li> 작 가 명:<input type="text" name="author" placeholder="작가" required></li>		  
		   <li> 출 판 사:<input type="text" name="publisher" placeholder="출판사" required></li>		  
		   <li> 출 판 일:<input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" required></li>		  
		   <li> 책 금 액:<input type="number" name="price" placeholder="금액" required></li>		  
		   <li> 이 미 지:<input type="text" name="imageID" placeholder="/img/item/책표지 주소.jpg(경로)" required></li>		  
		   <li> 재     고:<input type="number" name="stock" placeholder="등록 수량" required></li>		  
		  </ul>		
         </div>
         <div align="right">
		  <button type="submit" class="btn btn-primary">추가</button>         
		</div>
	</div>
	</form>
</div>
</body>
</html>