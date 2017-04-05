<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->

<div class="row">
    <div class="event event-header">
        <h2>회원 관리</h2>
    </div>
    
</div>

<div class="row">
	<table class="table">
		<thead>
			<tr>
				<th>사용자 번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>우편번호</th>
				<th>주소</th>
				<th>전화번호</th>
			</tr>
		</thead>
<%
	request.setCharacterEncoding("utf-8");
	int userNo = 0;
	String modify = "";
	String ID = "";
	int result = 0;
	
	MemberService userList = new MemberService(	); 
	
	if(request.getParameter("ID") != null && !request.getParameter("ID").equals(""))
		ID = request.getParameter("ID");
	if(request.getParameter("userNo") != null && !request.getParameter("userNo").equals(""))
		userNo = Integer.parseInt(request.getParameter("userNo"));
	if(request.getParameter("mod") != null && !request.getParameter("mod").equals(""))
		modify = request.getParameter("mod");
	
	if(modify.equals("update")){
		if(!ID.equals("")) result = userList.updateMember(ID);
	}else if(modify.equals("delete")){
		if(userNo !=0 ){
			result = userList.delMember(userNo);
		}
	}
	
	Member[] member = userList.getMembers();
	if(member.length>0){
		for(int i=0;i<member.length;i++){
%>
		<tbody>
			<tr>
				<td><input type="radio" name="userNo" value=<%=member[i].getMemberID()%>/><%=member[i].getMemberID() %></td>
				<td><%=member[i].getEmail() %>
				<td><%=member[i].getName() %></td>
				<td><%=member[i].getPostCode() %></td>
				<td><%=member[i].getAddress() %></td>
				<td><%=member[i].getPhone() %></td>
			</tr>
		</tbody>
<%			
		}
	}
%>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="ID" placeholder="아이디 입력">
			<button type="submit" class="btn btn-default" name="mod" value="update"><span>회원 수정</span></button>
			<button type="submit" class="btn btn-default" name="mod" value="delete"><span>회원 삭제</span></button>
		</div>
</table>
</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>