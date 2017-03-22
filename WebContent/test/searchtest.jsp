<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="mgr.SearchMgr" %>
<%
SearchMgr mymgr = new SearchMgr();
/* 
Book newbook = new Book();
newbook.setBookName("시험용");
newbook.setAuthor("작가1"); 
mymgr.addBook(newbook);
*/

%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<h2><%=mymgr.cntBooks() %></h2>
<h2><%=mymgr.cntBook(3) %></h2>
<%
	for(Book output:mymgr.getBooks()){
%>
	<h3><%=output.getBookID() %>, <%=output.getBookName() %>, <%=output.getAuthor() %></h3>
<%} %>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>