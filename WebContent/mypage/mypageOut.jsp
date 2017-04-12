<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="dao.MypageDao"
		 import="dao.DbBasedMypageDao"%>
		   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지 회원탈퇴</title>
</head>
<style>
#out{
border: 1px solid #000; 
width:50rem;
margin-top:5%;
text-align:center;
}
#out2{
border:none;
width:16rem;
margin-top:2%;

}
</style>    
<body>
<%
int tmp = (Integer)session.getAttribute("memberID");
int userID=1;
if(tmp == 0){
}else{
	userID = tmp;
}
Member member= new Member();
MypageDao md = new DbBasedMypageDao();
String pw = "";

if(request.getParameter("password") !=null&& !request.getParameter("password").equals("")){
	pw = request.getParameter("password");
}
String getout ="";
if( request.getParameter("out")!=null && !request.getParameter("out").equals("")){
	getout = request.getParameter("out");
}
if(getout.equals("sss")){
	member.setPassword(pw);
	member.setMemberID(userID);
	if(member !=null){
		md.getoutMember(member);
		session.invalidate();
	

%>
<jsp:include page="../logo.jsp"/>
<div class="container" id="out">
	<h4>그동안 Book&Cafe를 이용해주셔서 감사합니다.</h4>
	<p>앞으로 더 나은 서비스르 제공할수 있도록 최선을 다하겠습니다.</p>
	<p>서비스 개선을 위한 의견이나 제안을 master@bookncafe로 보내주시면</p>
	<p>향후 서비스 개선 활동에 반영하도록 하겠습니다. 감사합니다.</p>
</div>
<div class="container" id="out2">
<a href="/main.jsp"><button type="button" class="btn btn-danger">메인화면으로</button></a>
</div>
<%
	}
}else{
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
<%
}
%>
</body>

</html>