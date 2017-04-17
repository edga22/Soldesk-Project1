<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="dao.MypageDao"
		 import="dao.DbBasedMypageDao"
		 import="dao.DbBasedMemberDao"
		 import="service.MemberService"%>
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
<title>전화번호변경</title>
</head>
<body>
<%
int memberID = (Integer)session.getAttribute("memberID");
MemberService ms = new MemberService();
Member member= ms.getMember(memberID);

String newph = request.getParameter("newph");
if(newph!=null &&!newph.equals("")){
	if(!newph.equals(member.getPhone())){
		member.setPhone(newph);
		ms.updateMember(member);
	}

%>
<script>
	swal({
	title: "성공",
	text: "전화번호 변경이 완료되었습니다.",
	type: "success"
	},
	function(){
	window.location.replace("/mypage/mypageModify.jsp");
	});
	</script>
<%
}
%>

<jsp:include page="/mypage/mypageModify.jsp"/>
</body>
</html>