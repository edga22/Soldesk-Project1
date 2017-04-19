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
String tmpID = request.getParameter("bookID");
int bookID = 0;
%>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<%
if(tmpID == null || tmpID.equals("")){
%>		
<h3>요청하신  도서번호는 존재하지 않습니다.</h3>
<%	
}else{
	bookID = Integer.parseInt(tmpID);
	Book book = mymgr.getBook(bookID);
%>
<div id="BDel" class="container">
<h3>요청하신 도서번호<%=bookID%>, "<%= book.getBookName()%>" 도서가 재고에서 삭제되었습니다.</h3>
<%	
	mymgr.delBook(bookID);
}
%>	
</div>
</body>
</html>