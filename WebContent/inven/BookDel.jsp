<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>책 삭제하기</title>
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
String bookID = request.getParameter("bookID");
Book delbook = new Book();
%>

<div id="BDel" class="container">
<%
if( bookID == null || bookID.equals("")){
%>
	<h3> 삭제 하실 도서번호가 존재하지 않습니다.</h3>
<%	
}else{
	Book[] books = mymgr.getBooks();
	for(Book book: books){
		if( book.getBookID() == Integer.parseInt(bookID) ){
			mymgr.delBook(Integer.parseInt(bookID));
			delbook.setBookName(book.getBookName());
		}
	}
%>	
	<h3>요청하신 "<%= delbook.getBookName()%>" 도서가 재고에서 삭제되었습니다.</h3>
<%	
}
%>
</div>
</body>
</html>