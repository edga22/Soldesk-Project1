<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="mgr.BookMgr" 
	import="java.util.Date" 
	import="java.text.SimpleDateFormat" %>
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
<%
BookMgr mymgr = new BookMgr();
Book newbook = new Book();
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
Date tmp = format.parse(request.getParameter("publishDate"));
java.sql.Date pubDate = new java.sql.Date(tmp.getTime());

newbook.setBookName(request.getParameter("bookName"));
newbook.setAuthor(request.getParameter("author"));
newbook.setPublisher(request.getParameter("publisher"));
newbook.setPublishDate(pubDate);
newbook.setPrice(Integer.parseInt(request.getParameter("price")));
newbook.setImageID(request.getParameter("imageID"));
mymgr.addBook(newbook);
%>
<jsp:include page="/inven/BookManagement.jsp"></jsp:include>
<div id="BAdd" class="container">
<h2>도서 추가 결과</h2>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>도서명</th>
		<th>작가</th>
		<th>출판사</th>
		<th>출판일</th>
		<th>금 액(원)</th>
		<th>책표지 주소</th>
	  </tr>
	 </thead>
	 <tbody>	 	
	  <tr>
		<th><%=newbook.getBookName()%></th>
		<th><%=newbook.getAuthor() %></th>
		<th><%=newbook.getPublisher() %></th>
		<th><%=newbook.getPublishDate() %></th>
		<th><%=newbook.getPrice() %></th>
		<th><%=newbook.getImageID() %></th>
	  </tr>	  			
	 </tbody>
	</table>	
</div>

</body>
</html>