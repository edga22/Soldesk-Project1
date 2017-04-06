<%@page import="domain.Basket"%>
<%@page import="mgr.BasketMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BasketMgr mgr=new BasketMgr();
	
	String bID=request.getParameter("bookID");
	String count=request.getParameter("cnt");

	int bookID=Integer.parseInt(bID);
	int cnt=Integer.parseInt(count);
	mgr.add(bookID, cnt);
	
	response.sendRedirect("basketlist.jsp");
%>