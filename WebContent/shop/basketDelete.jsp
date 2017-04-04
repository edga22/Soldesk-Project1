<%@page import="mgr.BookMgr"%>
<%@page import="domain.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Book> bookList=(ArrayList<Book>)session.getAttribute("bookList");
	Book book=new Book();
	BookMgr mgr=new BookMgr();
	
	//장바구니에서 삭제한 상품들
	int bookID=(int)session.getAttribute("bookID");
	book=mgr.getBook(bookID);
	bookList.remove(book);
%>
<jsp:forward page="basketlist.jsp"/>