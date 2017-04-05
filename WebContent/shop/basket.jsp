<%@page import="java.util.HashSet"%>
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
	
	//만약 장바구니에 목록이 있다면?
	if(session.getAttribute("bookList") != null)
		bookList=(ArrayList<Book>)session.getAttribute("bookList");
	//만약 장바구니에 목록이 없으면
	else session.setAttribute("bookList", bookList);
	
	String bID=request.getParameter("bookID");
	int bookID=Integer.parseInt(bID);
	Book book=mgr.getBook(bookID);
	
	bookList.add(book);
	response.sendRedirect("/shop/basketlist.jsp");
%>