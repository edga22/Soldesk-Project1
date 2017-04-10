<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="mgr.MemberService"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지 개인정보수정</title>
</head>
<body>
<%
MemberService ms = new MemberService();
int tmp = (Integer)session.getAttribute("memberID");
int userID=1;
if(tmp == 0){
}else{
	userID = tmp;
}
Member member = ms.getMember(userID);
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container">
	<div class="row content">
    	<div class="col-sm-2 sidenav">
			<jsp:include page="/mypage/mypageMain.jsp"></jsp:include>
		</div>
<div class="col-sm-10">
      <h2>개인정보 수정</h2>
      <br>
      <h4>회원정보</h4>
      <table class="table table-bordered">
	<thead>
		<tr>
			<th>아이디</th>
			<td><%=member.getMemberID()%></td>
		</tr>
	</thead>
	<tbody>          
		<tr>
			<th>이름</th>
			<td><%=member.getName()%></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><%=member.getPhone()%></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=member.getEmail()%></td>
		</tr>
		<tr>
			<th>우편번호</th>
			<td><%=member.getPostCode()%></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=member.getAddress()%></td>
		</tr>
	</tbody>
	</table>
     <button type="submit" class="btn btn-danger">수정완료</button>
  </div>
  </div>
  </div>
  <jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>