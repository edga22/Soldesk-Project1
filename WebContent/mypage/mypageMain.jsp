<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
         import="service.MemberService"%>

<title>마이페이지</title>

 <%
 int tmp = (Integer)session.getAttribute("memberID");
 int userNo = 0;
 if(tmp!=0){
     userNo = tmp;
 }
 MemberService ms = new MemberService();
 Member member = ms.getMember(userNo);
 %>

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="row">
	    <div class="col-sm-2">
	    <jsp:include page="/mypage/mypageMenu.jsp"/>
	    </div>
	    <div class="col-sm-10">
	    <p>마이 페이지 입니다.</p>
	    </div>
    </div>
</div>

<jsp:include page="/main_foot.jsp"/>                                     
