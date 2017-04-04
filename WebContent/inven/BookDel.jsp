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
int bookID = Integer.parseInt(request.getParameter("bookID"));
Book delbook = new Book();
%>
<jsp:include page="/inven/BookManagement.jsp"></jsp:include>
<div id="BDel" class="container">
<%
	Book[] books = mymgr.getBooks();
	for(Book book: books){
		if( book.getBookID() == bookID ){
			mymgr.delBook(bookID);
			delbook.setBookName(book.getBookName());
%>
	<h3>요청하신 도서번호<%=bookID%> "<%= delbook.getBookName()%>" 도서가 재고에서 삭제되었습니다.</h3>
<%					
		}
	}
	if(delbook.getBookName()==null || delbook.getBookName().equals("") ){
%>		
	<h3>요청하신  도서번호 "<%= bookID %>" 도서가 재고 존재하지 않습니다.</h3>
<%		
	}
%>	
</div>
</body>
</html>