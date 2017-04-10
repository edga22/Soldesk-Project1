<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String bID=request.getParameter("bookID");
	int bookID=Integer.parseInt(bID);
	
	String count=request.getParameter("cnt");
	int cnt=Integer.parseInt(count);
	//session.setAttribute("cnt", cnt);
	//response.sendRedirect("/shop/basketlist.jsp");
%>
<%=bookID %>
<%=cnt%>