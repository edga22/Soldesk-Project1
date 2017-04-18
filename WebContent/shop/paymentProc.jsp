<%@page import="mgr.BasketMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	BasketMgr mgr=(BasketMgr)session.getAttribute("basket");
	String[] bID=request.getParameterValues("bookID");
	
 	for(int i=0;i<bID.length;i++){
		int bookID=Integer.parseInt(bID[i]);
		mgr.remove(bookID);
	} 
%>
<jsp:forward page="payResult.jsp"/>
