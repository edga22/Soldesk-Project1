<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>이벤트 관리</title>
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
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int userNo = 0;
	String modify = "";
	int point = 0;
	int result = 0;
	
	Member updMem = new Member();
	MemberDao userList = new DbBasedMemberDao(); 
	
	if(request.getParameter("point") != null && !request.getParameter("point").equals(""))
		point = Integer.parseInt(request.getParameter("point"));
	if(request.getParameter("userNo") != null && !request.getParameter("userNo").equals(""))
		userNo = Integer.parseInt(request.getParameter("userNo"));
	if(request.getParameter("mod") != null && !request.getParameter("mod").equals(""))
		modify = request.getParameter("mod");
	
	if(modify.equals("update")){			//유저 아이디 수정
		if(point != 0){
			updMem.setBonusPoint(point);
			updMem.setMemberID(userNo);
			result = userList.updatePoint(updMem);
		}
	}else if(modify.equals("delete")){		//유저 강제 탈퇴.
		if(userNo != 0){
			result = userList.delMember(userNo);
		}
	}
%>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->

<div class="row">
    <div class="event event-header">
        <h2>회원 관리</h2>
    </div>
<form action="membermgr.jsp">
		<div class="col-sm-4">
			<input type="number" class="form-control" name="point" max="999999" placeholder="보너스 포인트 변경">
			<button type="submit" class="btn btn-default" name="mod" value="update"><span>포인트 수정</span></button>
			<button type="submit" class="btn btn-default" name="mod" value="delete"><span>회원 삭제</span></button>
		</div>
	<table class="table">
		<thead>
			<tr>
				<th>사용자 번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>우편번호</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>포인트</th>
			</tr>
		</thead>
		<tbody>
<%	
	Member[] member = userList.getMembers();
	if(member.length>0){
		for(int i=0;i<member.length;i++){
%>
			<tr>
				<td><input type="radio" name="userNo" value="<%=member[i].getMemberID()%>"/><%=member[i].getMemberID()%></td>
				<td><%=member[i].getEmail() %>
				<td><%=member[i].getName() %></td>
				<td><%=member[i].getPostCode() %></td>
				<td><%=member[i].getAddress() %></td>
				<td><%=member[i].getPhone() %></td>
				<td><%=member[i].getBonusPoint() %>
			</tr>
<%			
		}
	}
%>
		</tbody>
</table>
</form>
</div>
</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>