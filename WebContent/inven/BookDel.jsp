<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>책 삭제하기</title>
</head>
<body>
<%
 String bookName = "책이름";

if( bookName.equals("책이름")){
%>	
<h3>요청하신 "<%= bookName%>" 도서가 재고에서 삭제되었습니다.</h3>
<%
}else{
%>
<h3> 삭제 하실 도서명이 존재하지 않습니다.</h3>
<%
}
%>

</body>
</html>