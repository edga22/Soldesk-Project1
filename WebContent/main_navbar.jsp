<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Category"
		 import="mgr.CategoryMgr"
		 import="domain.Member"
		 import="service.MemberService" 
		 import="java.util.List"%>
<%
CategoryMgr catemgr = new CategoryMgr();

String cataPage = request.getParameter("cata");
String catastr="";
String catastr2="";
String catastr3="";
int cataCode = 0;

if(cataPage != null){
	if(cataPage.equals("all"))	catastr2="active";
	else if(cataPage.equals("best"))    catastr3="active";
	else cataCode = Integer.parseInt(cataPage);
}else{
	catastr="active";
}

String memberID = "";
if(session.getAttribute("ID") != null)memberID = (String)session.getAttribute("ID");
int memberNum = 0;
if(session.getAttribute("memberID") != null) memberNum = (int)session.getAttribute("memberID");

String scTarget = "";
if(request.getParameter("SearchTarget") != null) scTarget = request.getParameter("SearchTarget");
int scTargetCode = 0;
try{
	scTargetCode = Integer.parseInt(scTarget);
}catch(Exception e){
	scTargetCode = 0;
}
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

<script>
$(document).ready(function(){
		
	$("#searchform").submit(function(){		
		var inputtext = $("#search").val();
		
		var trimtext = $.trim(inputtext);
		
		if(trimtext.length < 2){
			alert("2글자 이상 입력해주세요");
			$("#search").val(trimtext);
			$("#search").focus();
			return false;
		}else {
			$("#search").val(trimtext);
			$("#searchform").submit();
		}
	});
});
</script>
</head>
<body>
<div id="topheader" class="container-fluid">
    <div class="row">
       <div class="col-sm-6 text-right" style="background-color:#ffd11a;height:70px;">
         <h2 style="margin-right:8rem"><span class="glyphicon">&#xe233;</span> 북앤카페 새학기 맞이 대잔치</h2>
       </div>
       <div class="col-sm-1 text-left" style="border-bottom:70px solid #ff99bb;border-left:40px solid #ffd11a;">
       </div>
       <div class="col-sm-5 text-left" style="background-color:#ff99bb;height:70px;">
         <h2 style="margin-left:-3rem"><span class="glyphicon">&#xe103;</span> 봄도 독서의 계절, 졸음싹 커피</h2>
       </div>
    </div>
</div>
<nav id="topheaderwrap" class="headerwrap" data-spy="affix" data-offset-top="70">
	<div class="row" id="wrap">
    	<div class="col-md-12"> 
        	<div class="row" >
            	<div class="col-md-6">
                	<ul class="nav nav-tabs">
							<li class="<%=catastr %>">
								<a href="/main.jsp">Home</a>
							</li>
							<li class="<%=catastr2 %>">
								<a href="/mainCategory.jsp?cata=all">전체도서</a>
							</li>
							<%		    
						    for(Category result1:catemgr.listCategoriesCode1()){
						    	String cateHeaderStr = "";
						    	if(cataCode != 0){
						    		if(cataCode == result1.getCode1()){
						    		    cateHeaderStr = "active";
						    		}
						    	}
						    	if(result1.getCategoryUse() == 1){
						    %>
					        <li class="<%= cateHeaderStr %>">
	                        	<a href="/mainCategory.jsp?cata=<%=result1.getCode1() %>"><%=result1.getCategoryName() %></a>
	                       	</li>   		              
							<%
						    	}
							} %>							
							<li class="<%=catastr3 %>">
                                <a href="/shop/bestseller.jsp?cata=best">베스트셀러</a>
                            </li>		            
                   	</ul>
               	</div>
               	<div class="col-md-6 text-right">
                   	<ul class="breadcrumb" style="height:36px">
                       	<%if(!memberID.equals("")){ 
                       		MemberService ms = new MemberService();
                       		Member member = ms.getMember(memberNum);
                       		int level = member.getBonusPoint();
                       		String color = "";
                       		String font = "";
                       			if(level<=2000){
                       				color = "brown";
                       				font = "브론즈";
                       			}else if(2000<level && level<=5000){
                       				color = "#e6e6e6";
                       				font = "실버";
                       			}else if(5000<level && level<=10000){
                       				color = "#ffd633";
                       				font = "골드";
                       			}else if(10000<level && level<=30000){
                       				color = "#009999";
                       				font = "플레티넘";
                       			}else if(30000<level && level<=50000){
                       				color = "#00bfff";
                       				font = "다이아";
                       			}else{
                       				color = "#9933ff";
                       				font = "VIP";
                       			}        
                       	%>
                       		<li>
                       		<a href="/mypage/memberLevel.jsp"><span class="member_rate" style="background-color: <%=color%>;"><%=font %>회원</span></a>
                               	
                           	<%if(memberID.equals("admin@admin.com")){%>
                           	<a href="/admin/index.jsp"><b><%=memberID %></b></a>                       	
                      		<%}else{ %>
                           	<a href="/mypage/mypageOrderMod.jsp"><b><%=memberID %></b></a>                      	
                      		<%} %>
                      		<span class="divider"></span> 
                      	</li>
                       	<li>
                           	<a href="/mypage/mypageOrderMod.jsp">마이페이지</a> <span class="divider"></span>
                       	</li>
                       	<li>
                           	<a href="/sign/signOut.jsp">로그아웃</a> <span class="divider"></span>
                        </li>
                        <li>
                           	<a href="/game/miniGame.jsp">Game</a> <span class="divider"></span>
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
            <div class="col-md-8">     
            <!-- 검색 시작 -->         
                <form class="navbar-form navbar-left form-group-lg" id="searchform" role="search" action="/shop/searchresult.jsp">
                    <select class="form-control" id="sel1" name="SearchTarget">
                        <option value="all">통합검색</option>
                  <% for(Category result1:catemgr.listCategoriesCode1()){  %>
                        <option value="<%=result1.getCode1() %>" <%=(result1.getCode1()==scTargetCode)?"selected":"" %>><%=result1.getCategoryName() %></option>
                  <% } %>
                    </select>
                    <input type="text" class="form-control" id="search" name="SearchWord"/>                            
                    <button type="submit" id="search-btn" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-search"></span> 검색</button>
                    <button type="button" class="btn btn-link" style="display:none;"><strong>상세검색</strong></button>
                </form>
            <!-- 검색 끝 -->  
            </div>
            <div class="col-md-2">
               <div id="ad1" style="float: right;">
                   <a href="/inven/bookDetail.jsp?bookID=14" title="언어의 온도 바로가기"><img alt="상단광고" src="/img/main/161111_head_mgt.jpg" /></a>
               </div>
            </div>
        </div>
	</div>
</header>
<div id="headerLine" class="container-fluid"> </div>
<script> 
$(document).ready(function(){
    $("#allMenu").click(function(){
        $("#allMenuPannel").slideToggle("slow");
    });
});
</script>
<!-- 공통 상단 끝 -->
