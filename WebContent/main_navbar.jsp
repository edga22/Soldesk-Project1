<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link rel="stylesheet" href="/bookcafe.css">
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
                       <li class="active">
                           <a>Home</a>
                       </li>
                       <li>
                           <a href="#">국내도서</a>
                       </li>
                       <li>
                           <a href="#">외국도서</a>
                       </li>
                       <li>
                           <a href="#">eBook</a>
                       </li>                                                            
                   </ul>
               </div>
               <div class="col-md-6 text-right">
                   <ul class="breadcrumb" style="height:36px">
                        <!--  li>
                           <span class="member_rate"> 회원등급 </span> <a href="main.html"><b>회원아이디</b>님</a> <span class="divider"></span>
                       </li>
                       <li>
                           <a href="main.html">로그아웃</a> <span class="divider"></span>
                       </li-->
                       <li>
                           <a href="/sign/signUpPage.jsp">로그인</a> <span class="divider"></span>
                       </li>
                       <li>
                           <a href="/sign/signIn.jsp">회원가입</a> <span class="divider"></span>
                       </li>
                       <li>
                           <a href="/mypage/MypageMain.jsp">마이페이지</a> <span class="divider"></span>
                       </li>
                       <li>
                           <a href="#">장바구니</a>
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
              <a class="navbar-brand" href="#"><span class="glyphicon">&#xe043;</span><font>&#38;</font>cafe</a>
            </div>        
                          
            <div class="col-md-7">              
                <form class="navbar-form navbar-left" role="search" action="/shop/searchresult.jsp">
                    <select class="form-control" id="sel1">
                        <option>통합검색</option>
                        <option>국내도서</option>
                        <option>외국도서</option>
                        <option>eBook</option>
                    </select>
                    <input type="text" class="form-control" id="search" />                            
                    <button type="submit" class="btn btn-primary">검색</button>
                    <button type="button" class="btn btn-link"><strong>상세검색</strong></button>
                </form>
            </div>
            <div class="col-md-3">
               <div id="ad1">
                   <img alt="상단광고" src="./img/main/161111_head_mgt.jpg" />
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
                   
                    <button class="btn btn-default" type="button">
                        <em class="glyphicon glyphicon-align-left"></em> 베스트셀러
                    </button> 
                    <button class="btn btn-default" type="button">
                        <em class="glyphicon glyphicon-align-center"></em> 새로나온책
                    </button> 
                    <button class="btn btn-default" type="button">
                        <em class="glyphicon glyphicon-align-right"></em> 이벤트
                    </button> 
                    <button class="btn btn-default" type="button">
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
		                    <li><a href="#" class="list-group">국내도서1</a></li>
		                    <li><a href="#" class="list-group">국내도서2</a></li>
		                    <li><a href="#" class="list-group">국내도서3</a></li>
		                    <li><a href="#" class="list-group">국내도서4</a></li>
		                    <li><a href="#" class="list-group">국내도서5</a></li>
		                    <li><a href="#" class="list-group">국내도서6</a></li>
		                    <li><a href="#" class="list-group">국내도서7</a></li>
		                    <li><a href="#" class="list-group">국내도서8</a></li>
		                    <li><a href="#" class="list-group">국내도서9</a></li>
		                    <li><a href="#" class="list-group">국내도서10</a></li>
		                </ul>
		            </div>
		            <div class="allMenuLine"></div>
		            <div class="allMenu_list">
		                <ul>
		                    <li class="title">외국도서</li>
		                    <li><a href="#" class="list-group">외국도서1</a></li>
		                    <li><a href="#" class="list-group">외국도서2</a></li>
		                    <li><a href="#" class="list-group">외국도서3</a></li>
		                    <li><a href="#" class="list-group">외국도서4</a></li>
		                    <li><a href="#" class="list-group">외국도서5</a></li>
		                    <li><a href="#" class="list-group">외국도서6</a></li>
		                </ul>
		            </div>
		            <div class="allMenuLine"></div>
		            <div class="allMenu_list">
		                <ul>
		                    <li class="title">전자책</li>
		                    <li><a href="#" class="list-group">전자책1</a></li>
		                    <li><a href="#" class="list-group">전자책2</a></li>
		                    <li><a href="#" class="list-group">전자책3</a></li>
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


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>