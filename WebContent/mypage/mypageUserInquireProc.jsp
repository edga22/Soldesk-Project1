<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="domain.Member"%>
<%@ page import="service.UserInquireService"%>

<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>마이페이지 1:1문의</title>
<%
	//한글 인식처리 하기 위한 유니코드 처리
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");

	/* Member mb = new Member(); */	
	UserInquireService us = new UserInquireService();		
	
	String ID = (String) session.getAttribute("ID");
	int userID = (Integer)session.getAttribute("memberID");
	String uiem = request.getParameter("userInquireEmail"); // 질문자 이메일
	String uiqt = request.getParameter("userInquireType"); // 질문 유형
	String uit = request.getParameter("userInquireTitle"); // 질문 제목
	String uic = request.getParameter("userInquireContents"); // 질문 내용
	
	// db에 있는 아이디면 연결
		Member mbtm = us.getMember(userID);
	
	if (uiem == null || uiem.equals("")) {

	} else {		
		us.setAsk(uiqt, uit, uic);
	}
%>
<script>
		swal({
		title: "성공",
		text: "<%=mbtm.getEmail()%> 님 환영합니다.",
		type: "success"
		},
			function(){
		window.location.replace("mypage/mypageUserInquireResult.jsp");
		});
	</script>
</head>
<body>

</body>
</html>