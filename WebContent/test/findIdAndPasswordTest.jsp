<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<%@ page import="mgr.MemberService" %>
<!DOCTYPE html>
<html>
<%
	int result = 0;
	Member member = new Member();
	MemberService findMember = new MemberService();
	
	member.setEmail("admin@admin.com");
	member.setName("주인장");
	member.setPhone("000-0000-0000");
	
	Member fmember = findMember.findPwMember(member);
	out.print(fmember.getPassword());
	
%>