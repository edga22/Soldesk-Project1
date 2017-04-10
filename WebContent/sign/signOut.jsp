<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	session.removeAttribute("ID");	//아이디만 종료 장바구니 남아있음.
%>
<script>
	swal("로그아웃 되었습니다.");
	window.location.replace("/main.jsp");
</script>