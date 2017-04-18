<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="service.MemberService" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지</title>
</head>                 
<body>
 <%
 int tmp = (Integer)session.getAttribute("memberID");
 int userNo = 0;
 if(tmp!=0){
	 userNo = tmp;
 }
 MemberService ms = new MemberService();
 Member member = ms.getMember(userNo);
 
 int level = member.getBonusPoint();
 String img = "";
 String font = "";
 	if(level<=2000){
 		img="/img/member/bronze.PNG";
    	font = "브론즈";
 	}else if(2000<level && level<=5000){
 		img="/img/member/silver.PNG";
    	font = "실버";
    }else if(5000<level && level<=10000){
    	img="/img/member/gold.PNG";
    	font = "골드";
    }else if(10000<level && level<=30000){
    	img="/img/member/platinum.PNG";
        font = "플레티넘";
    }else if(30000<level && level<=50000){
    	img="/img/member/diamond.PNG";
    	font = "다이아";
    }else{
    	img="/img/member/vip.PNG";
   		font = "VIP";
    }
%>
<div class="container">
	<table>
	<tr>
		<th><img src="<%=img %>" style="width:90px; height:70px;"></th>
    </tr> 
    <tr>
    	<th>회원명: <%=member.getName() %></th>
   	</tr>
   	<tr>
    	<th>보너스: <%=level %>P</th>
   	</tr> 
   	<tr>  
    	<th>등급 : <%=font %></th> 
  	</tr> 
    </table>
      <br>
      <h4>주문내역</h4>
      <h5><a href="mypageOrderMod.jsp">주문조회/변경/취소</a></h5>
      <br>
      <br>
      <h4>개인정보관리</h4>
      <h5><a href="mypageModify.jsp">개인정보 수정</a></h5>
      <h5><a href="mypageOut.jsp">회원 탈퇴</a></h5>
      <br>
      <br>
      <h4>고객센터</h4> 
      <h5><a href="mypageQuestion.jsp">자주 묻는 질문</a></h5>
      <h5><a href="mypageUserInquire.jsp">1:1문의</a></h5>
    </div> 
                                     
</body>
</html>