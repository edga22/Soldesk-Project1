<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="service.UserInquireService"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<title>1:1문의 답변</title>
</head>
<body>

<%
	//한글 인식처리 하기 위한 유니코드 처리
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");

	/* Member mb = new Member(); */	
	UserInquireService us = new UserInquireService();		
	UserInquireDao uidao = new DbBasedUserInquireDao();	
		
	int userInquireID = Integer.parseInt(request.getParameter("UserInquireID")); // 질문 유형 */	
	
	UserInquire ui = uidao.getUserInquire(userInquireID);
	
	String answer = request.getParameter("userInquireAsk"); // 답변
	ui.setAnswer(answer);
	ui.setState(2);		

	us.updateAsk(ui);
%>
	<script>
		swal({
		title: "성공",
		text: "답변이 전송되었습니다.",
		type: "success"
		},
			function(){
		window.location.replace("qaList.jsp");
		});
	</script>
	
</body>
</html>