<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
String bookName = request.getParameter("bookName");
%>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<div id="BLA" class="container">
<h3>전체 도서 검색 결과</h3>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>도서번호</th>
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
<%
Book[] books = mymgr.getAllBooks();
Book check = new Book();
if( books != null){
	for(Book book: books){
		if(book.getBookName().equals(bookName)){
			check.setBookName(book.getBookName());
%>	 	
			  <tr>
				<th><%=book.getBookID()%></th>
				<th><%=book.getBookName()%></th>
				<th><%=book.getCategoryID()%></th>
				<th><%=book.getAuthor() %></th>
				<th><%=book.getPublisher() %></th>
				<th><%=book.getPublishDate() %></th>
				<th><%=book.getPrice() %></th>
				<th><%=book.getImageID() %></th>
				<th><%=book.getStock()%></th>
			  </tr>
<%
		}
	} 
	if(check.getBookName() == null || check.getBookName().equals("") ){
%>
		  <tr><th> 요청하신 도서"<%=bookName%>"가 존재하지 않습니다. </th></tr>
<%					
	}
}else{
%>
			  <tr><th> 재고관리 목록에 책이 없습니다. </th></tr>
<%
}
%>
	 </tbody>
	</table>
</div>
</body>
</html>