<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	session.removeAttribute("ID");
%>
<script>
	alert("로그아웃 되었습니다.");
	window.location.replace("/main.jsp");
</script>