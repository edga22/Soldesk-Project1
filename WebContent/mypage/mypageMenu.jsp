<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
         import="service.MemberService" 
         import="java.text.NumberFormat"%>

<style>
.panel-body a {
    color:#000;
    text-decoration: none;
}
#memberLevellTb {
    width:100%;
    align:center;
    margin-bottom:1.2rem;
    border: 1px solid #ddd;
}
#memberLevellTb th {
    height:3rem;
    font-size:1.3rem;
    text-align:left;
}
#memberLevellTb td {
    height:3rem;
    font-size:1.3rem;
    text-align:center;
}
#memberLevellTb th{
    font-size:1.4rem;
}
#memberLevellTb th span {
    font-size:1.7rem;
}
#memberLevellTb td span {
    font-size:1.5rem;
}
</style>

 <%
 int tmp = (Integer)session.getAttribute("memberID");
 int userNo = 0;
 if(tmp!=0){
	 userNo = tmp;
 }
 MemberService ms = new MemberService();
 Member member = ms.getMember(userNo);
 NumberFormat nf = NumberFormat.getNumberInstance();
 
 int level = member.getBonusPoint();
 String img = "";
 String color = "";
 String font = "";
 	if(level<=2000){
 		img="/img/member/bronze.PNG";
 		color = "brown";
    	font = "브론즈";
 	}else if(2000<level && level<=5000){
 		img="/img/member/silver.PNG";
 		color = "#e6e6e6";
    	font = "실버";
    }else if(5000<level && level<=10000){
    	img="/img/member/gold.PNG";
    	color = "#ffd633";
    	font = "골드";
    }else if(10000<level && level<=30000){
    	img="/img/member/platinum.PNG";
    	color = "#009999";
        font = "플레티넘";
    }else if(30000<level && level<=50000){
    	img="/img/member/diamond.PNG";
    	color = "#00bfff";
    	font = "다이아";
    }else{
    	img="/img/member/vip.PNG";
    	color = "#9933ff";
   		font = "VIP";
    }
%>
<div class="row" >
	<table id="memberLevellTb">
		<tr>
			<td rowspan="3">
	            <a href="/mypage/memberLevel.jsp"><img src="<%=img %>" style="width:75px; height:auto;"></a>
			</td>
			<th><%=member.getName() %> 님은</th>
	    </tr>
        <tr>  
            <th><span class="label label-info" style="background-color: <%=color%>;"><%=font %></span></th> 
        </tr> 
	    <tr>  
	        <th>등급 입니다.</th> 
	    </tr>
	   	<tr>
	    	<td colspan="2">
                포인트 <span class="badge"><%=nf.format(level)%>P </span>
            </td>
	   	</tr>
    </table>
    
    <div class="panel-group">
	    <div class="panel panel-default">
            <div class="panel-heading">주문내역</div>
            <div class="panel-body"><a href="/mypage/mypageOrderMod.jsp">주문조회/변경/취소</a></div>
	    </div>
		<div class="panel panel-default">
		    <div class="panel-heading">개인정보 수정</div>
		    <div class="panel-body"><a href="/mypage/mypageModify.jsp">개인정보 수정</a></div>
		    <div class="panel-body"><a href="/mypage/mypageOut.jsp">회원 탈퇴</a></div>
		</div>
		<div class="panel panel-default">
            <div class="panel-heading">고객센터</div>
            <div class="panel-body"><a href="/mypage/mypageQuestion.jsp">자주 묻는 질문</a></div>
            <div class="panel-body"><a href="/mypage/mypageUserInquireResult.jsp">1:1문의</a></div>
        </div>      
    </div>
</div> 
