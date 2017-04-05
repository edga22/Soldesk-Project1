<%@page import="java.util.HashSet"%>
<%@page import="mgr.BookMgr"%>
<%@page import="java.util.ArrayList"%>
<%@page import="config.Factory" %>
<%@page import="domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BookMgr mgr=new BookMgr();
	Book book=new Book();
	ArrayList<Book> bookList=new ArrayList<Book>();
	
	//만약 장바구니에 목록이 있다면?
	if(session.getAttribute("bookList") != null)
		bookList=(ArrayList<Book>)session.getAttribute("bookList");
	//만약 장바구니에 목록이 없으면?
	else session.setAttribute("bookList", bookList);
	
	//도서 ID
	String bID=request.getParameter("bookID");
	//도서 수량
	String count=request.getParameter("cnt");
	
	if(bID==null || count==null){ //받아온 도서의 id값이 null값이고, 수량이 없다면?
		response.sendRedirect("/shop/basketlist.jsp");
	}else{
		int bookID=Integer.parseInt(bID);
		int cnt=Integer.parseInt(count);
		book=mgr.getBook(bookID);
		
		//만약 장바구니에 똑같은 도서가 있다면?
		for(int i=0;i<bookList.size();i++){
			Book comBook=bookList.get(i);
			if(comBook==book){
				cnt+=1;
			}else{
				bookList.add(book);
			}
		}	
		
		//수량 넘겨주기
		session.setAttribute("cnt", cnt);
		response.sendRedirect("/shop/basketlist.jsp");
	}
%>