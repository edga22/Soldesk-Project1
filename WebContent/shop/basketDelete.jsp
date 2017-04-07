<%@page import="mgr.BasketMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BasketMgr mgr=(BasketMgr)session.getAttribute("mgr");

	String bID=request.getParameter("bookID");
	int bookID=Integer.parseInt(bID);
	
	//mgr.remove(bookID);
	//response.sendRedirect("/shop/basket.jsp");
%>
<%=bookID %>
<%=mgr.remove(bookID)%>