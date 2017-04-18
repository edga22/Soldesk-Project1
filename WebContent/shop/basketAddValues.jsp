<%@page import="mgr.BasketMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	BasketMgr mgr=(BasketMgr)session.getAttribute("basket");
	String[] bID=request.getParameterValues("bookID");
	int bookID=0;
	for(int i=0;i<bID.length;i++){
		bookID=Integer.parseInt(bID[i]);
		mgr.add(bookID, 1);
	}
	response.sendRedirect("/shop/basket.jsp");
%>