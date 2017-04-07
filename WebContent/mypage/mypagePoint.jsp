<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/main_navbar.jsp"></jsp:include>

	<%
		int memberID = (Integer)session.getAttribute("memberID");
		MemberService ms = new MemberService();
		Member member = ms.getMember(memberID);		
	%>

	<div class="container">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<jsp:include page="mypageMain.jsp"></jsp:include>
			</div>

			<div id="MypagePoint">
				<div class="col-sm-10">
					<h3>포인트 마일리지 보유 현황</h3>
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>세션 저장값</th>
								<th>아이디번호</th>
								<th>이메일</th>
								<th>주소</th>
								<th>총포인트</th>
								<th>이름</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th><%=memberID%></th>
								<th><%=member.getMemberID()%></th>
								<th><%=member.getEmail()%></th>
								<th><%=member.getAddress()%></th>
								<th><%=member.getBonusPoint()%></th>
								<th><%=member.getName() %></th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>