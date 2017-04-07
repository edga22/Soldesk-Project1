<%@page import="domain.Basket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String manager=request.getParameter("mgr");
	String bID=request.getParameter("bookID");
	
	int bookID=Integer.parseInt(bID);
%>
<%=manager%>