<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
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
<title>주소변경</title>
</head>
<body>
<%
int memberID = (Integer)session.getAttribute("memberID");
MemberService ms = new MemberService();
Member member= ms.getMember(memberID);

int postcode = Integer.parseInt(request.getParameter("postCode"));
String address = request.getParameter("address");
String address2 = request.getParameter("address2");
String address3 = request.getParameter("address") +" " + request.getParameter("address2"); 
if(postcode!=0 && 
	address !=null && !address.equals("") && 
	address2 !=null && !address2.equals("")){
	if(postcode!=(member.getPostCode()) || !address.equals(member.getAddress()) || !address2.equals(member.getAddress())){
		member.setPostCode(postcode);
		member.setAddress(address3);
		ms.updateMember(member);
	}

%>
<%
}
%>
<jsp:include page="/mypage/mypageModify.jsp"/>
</body>
</html>