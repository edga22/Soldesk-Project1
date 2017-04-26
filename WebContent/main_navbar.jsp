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
String cateHeaderStr2="btn-primary";
String cateHeaderStr3="btn-primary";
int cataCode = 0;

if(cataPage != null){
	if(cataPage.equals("all")){
		catastr2="active"; 
		cateHeaderStr2="btn-info";
	}else if(cataPage.equals("best")){
	    catastr3="active";
	    cateHeaderStr3="btn-info";
	}
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet" media="(min-width: 700px)" href="/bookcafe.css">
<link rel="stylesheet" media="(max-width: 700px)" href="/bookcafe2.css" />

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

	var jbOffset = $( '.jbMenu' ).offset();
	$( window ).scroll( function() {
		if ( $( document ).scrollTop() > jbOffset.top ) {
		   $( '.jbMenu' ).addClass( 'jbFixed' );
		}
		else {
		   $( '.jbMenu' ).removeClass( 'jbFixed' );
		}
	});
});
</script>
</head>
<body>
<div id="topheader" class="container-fluid visible-lg">
    <div class="row" id="topHeadAd">
       <div class="col-sm-6 col-xs-6 text-right" style="background-color:#ffd11a;height:70px;">
         <h2 style="margin-right:8rem"><span class="glyphicon">&#xe233;</span> 북앤카페 새학기 맞이 대잔치</h2>
       </div>
       <div class="col-sm-1 text-left" style="border-bottom:70px solid #ff99bb;border-left:40px solid #ffd11a;">
       </div>
       <div class="col-sm-5 col-xs-6 text-left" style="background-color:#ff99bb;height:70px;">
         <h2 style="margin-left:-3rem"><span class="glyphicon">&#xe103;</span> 봄도 독서의 계절, 졸음싹 커피</h2>
       </div>
    </div>
</div>
<nav id="topheaderwrap" class="headerwrap hidden-xs" data-spy="affix" data-offset-top="70">
	<div class="row" id="wrap">
    	<div class="col-sm-12"> 
        	<div class="row" >
            	<div class="col-sm-7">
                	<ul class="nav nav-tabs">
							<li class="<%=catastr %>">
								<a href="/main.jsp">홈</a>
							</li>
							<li class="<%=catastr2 %>">
								<a href="/mainCategory.jsp?cata=all">전체</a>
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
               	<div class="col-sm-5 hidden-xs text-right">
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
                       	<li class="hidden-sm">
                       		<a href="/mypage/memberLevel.jsp"><span class="member_rate" style="background-color: <%=color%>;"><%=font %>회원</span></a>
                               	
                           	<%if(memberID.equals("admin@admin.com")){%>
                           	<a href="/admin/index.jsp"><b><%=memberID %></b></a>                       	
                      		<%}else{ %>
                           	<a href="/mypage/mypageOrderMod.jsp"><b><%=memberID %></b></a>                      	
                      		<%} %>
                      		<span class="divider"></span> 
                      	</li>
                       	<li class="hidden-sm">
                           	<a href="/mypage/mypageMain.jsp">마이페이지</a> <span class="divider"></span>
                       	</li>
                       	<li class="hidden-lg hidden-md">
                            <a href="/mypage/mypageMain.jsp"><span style="background-color:<%=color%>;"><%=memberID %></span></a>
                        </li>
                       	<li>
                           	<a href="/sign/signOut.jsp">로그아웃</a> <span class="divider"></span>
                        </li>
                       <!--  <li>
                           	<a href="/game/miniGame.jsp">Game</a> <span class="divider"></span>
                       	</li> -->
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
            <div class="col-md-3 col-xs-4">
              <a class="navbar-brand" href="/main.jsp"><span class="glyphicon">&#xe043;</span><font>&#38;</font>cafe</a>
            </div>    
            <div class="col-md-7 hidden-xs">     
            <!-- 검색 시작 -->         
                <form class="form-inline form-group-lg" id="searchform" role="search" action="/shop/searchresult.jsp">
                    <select class="form-control" id="sel1" name="SearchTarget">
                        <option value="all">통합검색</option>
                  <% for(Category result1:catemgr.listCategoriesCode1()){  %>
                        <option value="<%=result1.getCode1() %>" <%=(result1.getCode1()==scTargetCode)?"selected":"" %>><%=result1.getCategoryName() %></option>
                  <% } %>
                    </select>
                    <input type="text" class="form-control" id="search" name="SearchWord"/>                            
                    <button type="submit" id="search-btn" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-search"></span> 검색</button>
                </form>
            <!-- 검색 끝 -->  
            </div>
            <div class="col-xs-12 visible-xs">
            <!-- 폰 검색 시작 -->         
                <form class="form-inline" id="searchform" role="search" action="/shop/searchresult.jsp">
                <div class="form-group has-success has-feedback">
					<input type="hidden" name="SearchTarget" value="all"/>
                    <input type="text" class="form-control" id="search" name="SearchWord"/>
                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
			    </div>
                    <button type="submit" id="search-btn" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> 검색</button>
                </form>
            <!-- 검색 끝 -->  
            </div>
            <div class="col-md-2 hidden-sm hidden-xs" id="ad1Div">
               <div id="ad1" style="float: right;">
                   <a href="/inven/bookDetail.jsp?bookID=14" title="언어의 온도 바로가기"><img alt="상단광고" src="/img/main/161111_head_mgt.jpg" /></a>
               </div>
            </div>
        </div>
	</div>
</header>

<div id="headerLine" class="container-fluid hidden-xs"> </div>

<div class="btn-group btn-group-justified visible-xs jbMenu">
    <a href="/mainCategory.jsp?cata=all" class="btn <%=cateHeaderStr2%>">전체</a>
<%
    String cateHeaderStr1 = "btn-primary";
    for(Category result1:catemgr.listCategoriesCode1()){
        if(cataCode != 0){
            if(cataCode == result1.getCode1()){
                cateHeaderStr1 = "btn-info";
            }else{
            	cateHeaderStr1 = "btn-primary";
            }
        }
        if(result1.getCategoryUse() == 1){
    %>
    <a href="/mainCategory.jsp?cata=<%=result1.getCode1() %>" class="btn <%=cateHeaderStr1%>"><%=result1.getCategoryName() %></a>
    <%
        }
    } %>                            
    <a href="/shop/bestseller.jsp?cata=best" class="btn <%=cateHeaderStr3%>">베스트</a>
</div>

<!-- 	<ul class="nav nav-tabs container-fluid visible-xs jbMenu">
	    <li class="active"><a href="#menu1">Menu 1</a></li>
	    <li><a href="#menu2">Menu 2</a></li>
	    <li><a href="#menu3">Menu 3</a></li>
	    <li><a href="#menu4">Menu 4</a></li>
	</ul> -->
<!-- 공통 상단 끝 -->
