<%@page import="domain.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Book> bookList=(ArrayList<Book>)session.getAttribute("bookList");
	//장바구니에서 삭제한 상품들
	String[] delBook=request.getParameterValues("bookID");
	
	if(delBook != null)
		for(String books:delBook) bookList.remove(books);
%>
<jsp:forward page="basketlist.jsp"/>