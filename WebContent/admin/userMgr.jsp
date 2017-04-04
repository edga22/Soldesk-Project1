<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<%
	String ID = request.getParameter("ID");
	String password = request.getParameter("psw");

	MemberDao MemberCheck = new DbBasedMemberDao();
	MemberService memberService = new MemberService();
	
	if((ID != null && ID.equals(""))
			&& (password != null && password.equals(""))){
		memberService.loginCheck(new Member(ID), new Member(password));
		session.setAttribute("ID",ID);
		session.setAttribute("psw",password);
%>		
		<h4>로그인 성공</h4>
		<%=ID %>
		<%=password %>
<%	}else{
%>		<h4>아이디 혹은 비밀번호가 틀렸습니다.</h4>
		<%=ID %>
		<%=password %>
<%
		}
%>