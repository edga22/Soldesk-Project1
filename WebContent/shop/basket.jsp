<%@page import="mgr.BookMgr"%>
<%@page import="java.util.ArrayList"%>
<%@page import="config.Factory" %>
<%@page import="domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("utf-8");
	BookMgr mgr=new BookMgr();
	ArrayList<Book> bookList=null;
	
	if(session.getAttribute("bookList") != null)
		bookList=(ArrayList<Book>)session.getAttribute("bookList");
	String bID=(String)session.getAttribute("bookID");
	
	if(bID==null || bID.equals("")){
		//장바구니에 그냥 들어갔을 때
	}
	int bookID=Integer.parseInt(bID);
	Book book=mgr.getBook(bookID);
	
	session.setAttribute("bookList", bookList);
	bookList.add(book);
	response.sendRedirect("basketlist.jsp");
%>