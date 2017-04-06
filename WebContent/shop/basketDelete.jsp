<%@page import="mgr.BasketMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 	
	BasketMgr mgr=new BasketMgr();
	//장바구니에서 삭제한 상품들
	String bookid=request.getParameter("bookID");
	int bookID=Integer.parseInt(bookid);
	//장바구니에서 삭제
	mgr.remove(bookID);
	response.sendRedirect("/shop/basket.jsp");
%>