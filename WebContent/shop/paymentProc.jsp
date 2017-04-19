<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mgr.BasketMgr"
		 import="service.PayService"%>
<% 
// 이전페이지에서 넘어온값 받기
String[] bookIDs = request.getParameterValues("bookID");
String[] cnts = request.getParameterValues("cnt");
String userName = request.getParameter("userName");
String phone = request.getParameter("phone");
String postCode = request.getParameter("postCode");
String address = request.getParameter("address");	
String address2 = request.getParameter("address2");	
int  memberID = (Integer)session.getAttribute("memberID");
// 사용할 매소드용 객체 생성
PayService ps = new PayService();
BasketMgr mgr=(BasketMgr)session.getAttribute("basket");

// 장바구니에 책 삭제
	for(int i=0;i<bookIDs.length;i++){
		int bookID=Integer.parseInt(bookIDs[i]);
		mgr.remove(bookID);
	}
	ps.setOrder(memberID, bookIDs, cnts);

	response.sendRedirect("/shop/payResult.jsp");
%>

