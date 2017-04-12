<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="mgr.search.SearchMgr" %>
<%
request.setCharacterEncoding("utf-8");
SearchMgr searcheng = new SearchMgr();
String target = "";
if(request.getParameter("target")!=null) target = request.getParameter("target");
String flag = "시험용 페이지";
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

<%
for(Book output : searcheng.getDao().getAllBooks()){%>
	<h5><%=output.getBookID() %>, <%=output.getBookName() %>, <%=output.getAuthor() %>, <%=output.getPublishDate() %></h5>
<%}
%>


<h2><%=flag %></h2>
<form>
<p>검색 키워드:<input type="text" name="target"> <button type="submit">검색</button></p>
</form>
<h2>검색된 책의 갯수 : <%=target%>으로 <%=searcheng.getBooks(target).length %></h2>
<%
	for(Book output:searcheng.getBooks(target)){
%>
	<h5><%=output.getBookID() %>, <%=output.getBookName() %>, <%=output.getAuthor() %>, <%=output.getPublishDate() %></h5>
<%} %>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>