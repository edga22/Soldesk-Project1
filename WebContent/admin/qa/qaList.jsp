<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>
<%@ page import="dao.MemberDao"%>
<%@ page import="dao.DbBasedMemberDao"%>
<%@ page import="domain.Member"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>1:1 문의 관리</title>
<style>
body {
    border-radius: 0px;
}
h3 {
    margin-top : 0.5em;
}

.result-group{
    margin-bottom : 1.5em;
}
td, th{
	text-align: center;
	font-size: 1.4rem;	
}
</style>
</head>
<body>
<%

UserInquireDao uiDao = new DbBasedUserInquireDao();

UserInquire[] userInquire = uiDao.getUserInquires();

MemberDao mbDao = new DbBasedMemberDao();



%>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->

<div class="row">
    <div class="event event-header" style="text-align:center">
        <h2>문의 목록</h2>
    </div>

<table class="table">
		<thead>
			<tr class="info">
				<th>등록번호</th>
				<th>아이디</th>				
				<th>제목</th>
				<th>등록일</th>
				<th>답변여부</th>				
			</tr>
		</thead>
		<tbody>
<%		
	for(int i=0;i<userInquire.length;i++){
		Member mb = mbDao.getMember(userInquire[i].getMemberID());
%>
			<tr>
				<td><%=userInquire[i].getUserInquireID() %></td>
				<td><%=mb.getEmail()%></td>				
				<td><a href="qaAnser.jsp?userInquireID=<%=userInquire[i].getUserInquireID()%>"><%=userInquire[i].getTitle() %></a></td>
				<td><%=userInquire[i].getDate() %></td>
				<td><%if(userInquire[i].getState() == 1){ %>미답변<% }else{ %>답변완료<% }%></td>				
			</tr>
<%			
	}	
%>
		</tbody>
</table>

</div>
</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>