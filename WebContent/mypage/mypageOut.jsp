<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="mgr.MemberService"
		 import="dao.MemberDao"
		 import="dao.DbBasedMemberDao"%>
		   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지 회원탈퇴</title>
</head>
    
<body>
<%
int tmp = (Integer)session.getAttribute("memberID");
int userID=1;
if(tmp == 0){
}else{
	userID = tmp;
}
Member member= new Member();
MemberDao md = new DbBasedMemberDao();
String pw = "";
String getout ="";
if(pw !=null&& pw.equals("")){
	pw = request.getParameter("password");
	}
if(getout !=null&&getout.equals("")){
getout = request.getParameter("out");
}
if(getout.equals("sss")){
	member.setPassword(pw);
	md.getoutMember(member);
}
%>
     
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container">
	<div class="row content">
    	<div class="col-sm-2 sidenav">
			<jsp:include page="mypageMain.jsp"></jsp:include>
		</div>
 <form action="mypageOut.jsp">
<div class="col-sm-10">
      <h2> 회원 탈퇴</h2>
      <h3> -회원 탈퇴시 적립금,예치금,마일리지 등이 자동삭제 됩니다.</h3>
     
      비밀번호:<input type="password" name="password">
      	  <button type="submit" class="btn btn-danger"name="out" value="sss">회원탈퇴</button>
</div>
 </form>
</div>
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>

</html>