<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String cnt=request.getParameter("cnt");
	session.setAttribute("cnt", cnt);
	//response.sendRedirect("/shop/baksetlist.jsp");
%>