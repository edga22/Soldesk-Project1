<%@page import="mgr.BasketMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	BasketMgr mgr=(BasketMgr)session.getAttribute("basket");
	String bID=request.getParameter("bookID");
	int bookID=Integer.parseInt(bID);
	
	String count=request.getParameter("cnt");
	int cnt=Integer.parseInt(count);
	
	mgr.update(bookID, cnt);
	response.sendRedirect("/shop/basket.jsp");
%>
<%=bookID %>
<%=cnt%>