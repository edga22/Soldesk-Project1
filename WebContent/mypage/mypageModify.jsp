<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="dao.MypageDao"
		 import="dao.DbBasedMypageDao"
		 import="dao.DbBasedMemberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>마이페이지 개인정보수정</title>
</head>
<body>
<%
DbBasedMemberDao ms = new DbBasedMemberDao();
DbBasedMypageDao dm = new DbBasedMypageDao();
int memberID = (Integer)session.getAttribute("memberID");

Member member = ms.getMember(memberID);
String oldpw =request.getParameter("oldpw");
String newpw1 =request.getParameter("newpw1");
String newpw2 =request.getParameter("newpw2");

if(oldpw !=null && !oldpw.equals("") && newpw1 !=null && !newpw1.equals("") && newpw2 !=null && !newpw2.equals("")){	
	if(oldpw.equals(member.getPassword()) ){
		if(newpw1.equals(newpw2)){
			member.setPassword(newpw1);
			dm.updateMember(member);			
%>
	<script>
	swal({
	title: "성공",
	text: "비밀번호변경이 완료되었습니다.",
	type: "success"
	},
	function(){
	window.location.replace("/mypage/mypageModify.jsp");
	});
	</script>
<%			
		}else{
%>
	<script>
	alert("새 비밀번호가 일치하지않습니다.");
	window.location.replace("/mypage/mypageModify.jsp");
	</script>
<%	
		}
	}else{
%>
	<script>
	alert("기존 비밀번호가 일치하지않습니다.");
	window.location.replace("/mypage/mypageModify.jsp");
	</script>
<%			
	}
}
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
			<th>회원번호</th>
			<td><%=member.getMemberID()%></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td><%=member.getEmail()%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><form action="mypageModify.jsp">
			<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#mySmallModal">비밀번호변경</button>
	
				<div class="modal fade" id="mySmallModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
							<h4 class="modal-title">아래에 변경할 비밀번호를 입력하세요.</h4>
							</div>
							<div class="modal-body">
					
							<table style="padding:1rem;margin:1rem;">
							<tr>
								<th>기존 비밀번호:</th><td><input type="password" style="margin:0.5rem;" name="oldpw"></td>
							</tr>
							<tr>
							<th>새 비밀번호:</th><td><input type="password" style="margin:0.5rem;"name="newpw1"></td>
							</tr>
							<tr>
							<th>새 비밀번호확인:</th><td><input type="password" style="margin:0.5rem;"name="newpw2"></td>
							</tr>
							</table>
							</div>
					<div class="modal-footer">
					<button type="submit" class="btn btn-default" value="pwcp">변경완료</button>
					<button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	</form>
</td>
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
			<th>우편번호</th>
			<td><%=member.getPostCode()%>
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=member.getAddress()%></td>
		</tr>
	</tbody>
	</table>
  </div>
  </div>
  </div>
  <jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>