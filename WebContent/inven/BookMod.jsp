<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="mgr.SearchMgr" 
	import="java.util.Date" 
	import="java.text.SimpleDateFormat" %>
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
SearchMgr mymgr = new SearchMgr();
// 이전 페이지에서 넘어온 값들 저장
int bookID = Integer.parseInt(request.getParameter("bookID"));
String bookName = request.getParameter("bookName");
String author = request.getParameter("author");
String date = request.getParameter("publishDate");
String price = request.getParameter("price");
String publisher = request.getParameter("publisher");
String imageID = request.getParameter("imageID");
// 북 파라미터 수정을 위한 작업(받은값이 null이 아닐경우에만 값 덮어쓰기)
Book[] books = mymgr.getBooks();
Book modbook = new Book();
for(Book book: books){
	if( book.getBookID() == bookID ){ // 북아이디와 일치하는 책 찾기
		modbook.setBookID(bookID);

		if(bookName ==null || bookName.equals("")) modbook.setBookName(book.getBookName()); 
			else modbook.setBookName(bookName);
	 
		if(author==null || author.equals("")) modbook.setAuthor(book.getAuthor());
			else modbook.setAuthor(author);

		if(publisher==null || publisher.equals("")) modbook.setPublisher(book.getPublisher());
			else  modbook.setPublisher(publisher);
		
		if( date == null || date.equals("")){ // 날짜 포멧 및 날짜 변경
			modbook.setPublishDate(book.getPublishDate());
		}else {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date tmp = format.parse(date);
			java.sql.Date pubDate = new java.sql.Date(tmp.getTime());
			modbook.setPublishDate(pubDate);
		}
		
		if( price == null || price.equals("")){
			modbook.setPrice(book.getPrice());	
		}else modbook.setPrice(Integer.parseInt(price));
		
		if(imageID == null || bookName.equals("")) modbook.setImageID(book.getImageID());
			else modbook.setImageID(imageID);
		
		mymgr.updateBook(modbook);
	}
}
%>
<jsp:include page="/inven/BookManagement.jsp"></jsp:include>
<div id="BookMod" class="container">
<h2>도서 수정 결과</h2>
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
		<th><%=modbook.getBookName()%></th>
		<th><%=modbook.getAuthor() %></th>
		<th><%=modbook.getPublisher() %></th>
		<th><%=modbook.getPublishDate() %></th>
		<th><%=modbook.getPrice() %></th>
		<th><%=modbook.getImageID() %></th>
	  </tr>	  			
	 </tbody>
	</table>	
</div>


</body>
</html>