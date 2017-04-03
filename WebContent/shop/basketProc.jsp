<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String bookID=request.getParameter("bookID");
	String memberID=request.getParameter("memberID");
	
	session.setAttribute("bookID", Integer.parseInt(bookID));
	session.setAttribute("memberID", memberID);
	response.sendRedirect("basket.jsp");
%>