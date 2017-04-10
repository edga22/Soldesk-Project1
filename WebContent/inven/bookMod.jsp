<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
// import한 객체 생성
BookMgr mymgr = new BookMgr();
// 이전 페이지에서 넘어온 값들 저장
int bookID = Integer.parseInt(request.getParameter("bookID"));
String bookName = request.getParameter("bookName");
String author = request.getParameter("author");
String date = request.getParameter("publishDate");
String price = request.getParameter("price");
String publisher = request.getParameter("publisher");
String categoryID = request.getParameter("categoryID");
String imageID = request.getParameter("imageID");
String stock = request.getParameter("stock");
// 북 파라미터 수정을 위한 작업(받은값이 null이 아닐경우에만 값 덮어쓰기)
Book book = mymgr.setBook(bookID,bookName,author,date,price,publisher,categoryID,imageID,stock);
%>
<jsp:include page="/inven/bookManagement.jsp"></jsp:include>
<div id="BookMod" class="container">
<h2>도서 수정 결과</h2>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>도서명</th>
		<th>카테고리번호</th>
		<th>작가</th>
		<th>출판사</th>
		<th>출판일</th>
		<th>금 액(원)</th>
		<th>책표지 주소</th>
		<th>재고</th>
	  </tr>
	 </thead>
	 <tbody>	 	
	  <tr>
		<th><%=book.getBookName()%></th>
		<th><%=book.getCategoryID()%></th>
		<th><%=book.getAuthor() %></th>
		<th><%=book.getPublisher() %></th>
		<th><%=book.getPublishDate() %></th>
		<th><%=book.getPrice() %></th>
		<th><%=book.getImageID() %></th>
		<th><%=book.getStock() %></th>
	  </tr>	  			
	 </tbody>
	</table>	
</div>
</body>
</html>