<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String cataPage = request.getParameter("cata");
String catat1 = "";
String catat2 = "";
String catat3 = "";
String catat4 = "";

if(cataPage != null && !cataPage.equals("")){
	if(cataPage.equals("domestic")){
	    catat1 = "active";
	}else if(cataPage.equals("oversea")){   
	    catat2 = "active";
	}else if(cataPage.equals("ebook")){
	    catat3 = "active";
	}
}else{
    catat4 = "active";
}

String memberID = "";
if(session.getAttribute("ID") != null)memberID = (String)session.getAttribute("ID");
int memberNum = 0;
if(session.getAttribute("memberID") != null) memberNum = (int)session.getAttribute("memberID");
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/bookcafe.css">
<style>
#searchform{
	width : 100%;
}
#search{
	width : 70%;
}
</style>
</head>
<body>
<div id="topheader" class="container-fluid">
    <div class="row">
       <div class="col-sm-6 text-right" style="background-color:#ffd11a;height:70px;">
         <h2 style="margin-right:7%"><span class="glyphicon">&#xe233;</span> 북앤카페 새학기 맞이 대잔치</h2>
       </div>
       <div class="col-sm-6 text-left" style="background-color:#ff99bb;height:70px;">
         <h2 style="margin-left:7%"><span class="glyphicon">&#xe103;</span> 봄도 독서의 계절, 졸음싹 커피</h2>
       </div>
    </div>
</div>
<nav id="topheaderwrap" class="headerwrap" data-spy="affix" data-offset-top="97">
    <div class="row" id="wrap">
       <div class="col-md-12"> 
           <div class="row" >
               <div class="col-md-6">
                    <ul class="nav nav-tabs">
                       <li class="<%= catat4 %>">
                           <a href="/main.jsp">Home</a>
                       </li>
                       <li class="<%= catat1 %>">
                           <a href="/mainCategory.jsp?cata=domestic">국내도서</a>
                       </li>
                       <li class="<%= catat2 %>">
                           <a href="/mainCategory.jsp?cata=oversea">외국도서</a>
                       </li>
                       <li class="<%= catat3 %>">
                           <a href="/mainCategory.jsp?cata=ebook">eBook</a>
                       </li>                                                            
                   </ul>
               </div>
               <div class="col-md-6 text-right">
                   <ul class="breadcrumb" style="height:36px">
                       <%if(!memberID.equals("")){
                       		if(memberID.equals("admin@admin.com")){%>
                       <li>
                           <span class="member_rate" style="display:none;"> 회원등급 </span><a href="/admin/index.jsp"><b><%=memberID %></b>님</a><span class="divider"></span>
                       </li>
                      		<%}else{ %>
                       <li>
                           <span class="member_rate" style="display:none;"> 회원등급 </span><a href="/mypage/mypageOrderMod.jsp"><b><%=memberID %></b>님</a><span class="divider"></span>
                       </li>
                      		<%} %>
                       <li>
                           <a href="/mypage/mypageOrderMod.jsp">마이페이지</a> <span class="divider"></span>
                       </li>
                       <li>
                           <a href="/sign/signOut.jsp">로그아웃</a> <span class="divider"></span>
                       </li>
                        <li>
                           <a href="/game/miniGame.jsp">Game zone</a>
                       </li>
                       <%}else{ %>
                       <li>
                           <a href="/sign/signInPage.jsp">로그인</a> <span class="divider"></span>
                       </li>
                       <li>
                           <a href="/sign/signUp.jsp">회원가입</a> <span class="divider"></span>
                       </li>
                       <%} %>
                       <li>
                           <a href="/shop/basket.jsp">장바구니</a>
                       </li>
                   </ul>
               </div>
           </div>
       </div>
    </div>
</nav>

<header id="headerwrap">
    <div class="container-fluid">      
        <div class="row">
            <div class="col-md-2">
              <a class="navbar-brand" href="/main.jsp"><span class="glyphicon">&#xe043;</span><font>&#38;</font>cafe</a>
            </div>        
                          
            <div class="col-md-7">     
            <!-- 검색 시작 -->         
                <form class="navbar-form navbar-left" id="searchform" role="search" action="/shop/searchresult.jsp">
                    <select class="form-control" id="sel1" name="SearchTarget">
                        <option value="all">통합검색</option>
                        <option value="domestic">국내도서</option>
                        <option value="oversea">외국도서</option>
                        <option value="ebook">eBook</option>
                    </select>
                    <input type="text" class="form-control" id="search" name="SearchWord"/>                            
                    <button type="submit" class="btn btn-primary">검색</button>
                    <button type="button" class="btn btn-link" style="display:none;"><strong>상세검색</strong></button>
                </form>
            <!-- 검색 끝 -->  
            </div>
            <div class="col-md-3">
               <div id="ad1">
                   <img alt="상단광고" src="/img/main/161111_head_mgt.jpg" />
               </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">               
                <button id="allMenu" type="button" class="btn btn-default">
                   	 전체카타고리
                </button>
            </div>
            <div class="col-md-10">
                <div class="btn-group">
                   <a href="/shop/monthBestseller.jsp">
                    <button class="btn btn-default" type="button">
                        <em class="glyphicon glyphicon-align-left"></em> 베스트셀러
                    </button> 
                    </a>
                    <button class="btn btn-default" type="button" style="display:none;">
                        <em class="glyphicon glyphicon-align-center"></em> 새로나온책
                    </button> 
                    <button class="btn btn-default" type="button" style="display:none;">
                        <em class="glyphicon glyphicon-align-right"></em> 이벤트
                    </button> 
                    <button class="btn btn-default" type="button" style="display:none;">
                        <em class="glyphicon glyphicon-align-justify"></em> 추천도서
                    </button>
                </div>
            </div>
        </div>        
        <div id="allMenuPannel">
            <div class="allMenu-container panel-body">
                <div class="allMenu">                     
		            <div class="allMenu_list">
		                <ul>
		                    <li class="title">국내도서</li>
		                    <li><a href="/mainCategory.jsp?cata=domestic" class="list-group">교양</a></li>
		                    <li><a href="/mainCategory.jsp?cata=domestic" class="list-group">소설</a></li>
		                    <li><a href="/mainCategory.jsp?cata=domestic" class="list-group">전공도서</a></li>		                    
		                </ul>
		            </div>
		            <div class="allMenuLine"></div>
		            <div class="allMenu_list">
		                <ul>
		                    <li class="title">외국도서</li>
		                    <li><a href="/mainCategory.jsp?cata=oversea" class="list-group">교양</a></li>
		                    <li><a href="/mainCategory.jsp?cata=oversea" class="list-group">소설</a></li>
		                    <li><a href="/mainCategory.jsp?cata=oversea" class="list-group">전공도서</a></li>		                    
		                </ul>
		            </div>
		            <div class="allMenuLine"></div>
		            <div class="allMenu_list">
		                <ul>
		                    <li class="title">전자책</li>
		                    <li><a href="/mainCategory.jsp?cata=ebook" class="list-group">교양</a></li>
		                    <li><a href="/mainCategory.jsp?cata=ebook" class="list-group">소설</a></li>
		                    <li><a href="/mainCategory.jsp?cata=ebook" class="list-group">전공도서</a></li>
		                </ul>
		            </div>       
                </div>
            </div>
        </div>
    </div>
</header>
<script> 
$(document).ready(function(){
    $("#allMenu").click(function(){
        $("#allMenuPannel").slideToggle("slow");
    });
});
</script>
<!-- 공통 상단 끝 -->
