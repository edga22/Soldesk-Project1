<%@page import="mgr.BookMgr"%>
<%@page import="java.util.ArrayList"%>
<%@page import="config.Factory" %>
<%@page import="domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("utf-8");
	BookMgr mgr=new BookMgr();
	ArrayList<Book> bookList=new ArrayList<Book>();
	
	if(session.getAttribute("bookList") != null)
		bookList=(ArrayList<Book>)session.getAttribute("bookList");
	else{	
		session.setAttribute("bookList", bookList);
	}
	String bID=(String)session.getAttribute("bookID");
	int bookID=Integer.parseInt(bID);
	Book book=mgr.getBook(bookID);
	
	bookList.add(book);
	
	response.sendRedirect("basketlist.jsp");
%>