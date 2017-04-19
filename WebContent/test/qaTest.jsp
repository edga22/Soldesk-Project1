<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.UserInquireService"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	UserInquireService us = new UserInquireService();
	


	int UserInquireID = 14;

	UserInquireDao uidao = new DbBasedUserInquireDao();	
	UserInquire ui = uidao.getUserInquire(UserInquireID);	// UserInquireID 14번 데이터 출력
	
	/* out.print(ui); */	
	
	String answer = "답변내용";
	/* out.print(answer); */
	
	int state = 2;
	/* out.print(state); */
	
	
	out.print(us.updateAsk("내용", 4));
	/* us.updateAsk(answer, state); */
	
	out.print(us.updateAsk(answer, state));
	
		
	
	/* if(ui.getUserInquireID() == UserInquireID){
		
		
	} */
	
			

	
		
	%>


</body>
</html>