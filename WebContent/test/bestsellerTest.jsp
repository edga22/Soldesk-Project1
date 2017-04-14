<%@page import="domain.BestSeller"%>
<%@page import="dao.DbBasedBestsellerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	DbBasedBestsellerDao dao=new DbBasedBestsellerDao();
	BestSeller[] bestseller=dao.getBestseller();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%for(int i=0;i<bestseller.length;i++){%>
<%=bestseller[i].getBook().getBookName() %>
<% }%>
</head>
<body>
</body>
</html>