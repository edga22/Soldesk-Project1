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
	String bID=request.getParameter("bookID");
	int bookID=Integer.parseInt(bID);
	book=mgr.getBook(bookID);
	//장바구니에서 삭제
	bookList.remove(book);
	
	session.setAttribute("bookList", bookList);
	response.sendRedirect("/shop/basketlist.jsp");
%>
