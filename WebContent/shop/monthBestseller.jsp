<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../bookcafe.css">
<title>베스트셀러</title>
<style>
#img{
	float: left;
}
.center {
    text-align: center;
}
</style>
</head>
<body>
<div class="container"> 
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
                       <li>
                           <a href="/main.html">Home</a>
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
                           <a href="basket.jsp">장바구니</a>
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
                   	<a href="monthBestseller.jsp">
                    <button class="btn btn-default" type="button">
                        <em class="glyphicon glyphicon-align-left"></em> 베스트셀러
                    </button>
                    </a>
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
</div>
<div id="monthBestseller">
<!-- 시작 -->
<div class="container"> 
<!-- 베스트셀러 탭 -->
<div class="row">

<!-- 탭 제목 -->
<ul class="nav nav-tabs">
  <li class="active"><a href="monthBestseller.jsp">월간베스트</a></li>
  <li><a href="newBestseller.jsp">신간베스트</a></li>
  <li><a href="ebookBestseller.jsp">E-book</a></li>
</ul>
</div> <!-- 탭 제목 -->

<!-- 베스트셀러 탭 내용 -->
<div class="tab-content"> 
  <div class="tab-pane fade in active">
  	<div class="row">
    	<h3 class="col-sm-10">이 달의 베스트</h3>
    	<div class="col-sm-2">
    		<form action="basket.jsp">
    			<input type="submit" class="btn btn-default btn-block" value="장바구니에 담기">
    		</form>
    		<form action="Payment.jsp">
 	  			<input type="submit" class="btn btn-default btn-block" value="바로구매">
 	  		</form>
 	  	</div>
    </div>
    
    <ul class="list-group">
      <!-- 도서 한권 리스트 -->
 	  <li class="list-group-item"> 
 	  <div class="row">
 	  	<div class="col-sm-1"><input type="checkbox"/></div>
 	  	<div class="col-sm-2"><img id="img" src="img/book/buket1.PNG"/></div>
 	  	<div class="col-sm-7">
 	  		<p><a href="../inven/BookDetail.jsp">책 제목</a></p> <p>지은이 | 출판사 | 책을 펴낸 날짜</p> <p>가격</p>
 	  	</div>
 	  	<div class="col-sm-2">
 	  		<form action="basket.jsp">
    			<input type="submit" class="btn btn-default btn-block" value="장바구니에 담기">
    		</form>
    		<form action="Payment.jsp">
 	  			<input type="submit" class="btn btn-default btn-block" value="바로구매">
 	  		</form>
 	  	</div>
 	   </div>
 	  </li> <!-- 도서 한권 리스트 -->
 	  <li class="list-group-item"> 
 	  <div class="row">
 	  	<div class="col-sm-1"><input type="checkbox"/></div>
 	  	<div class="col-sm-2"><img id="img" src="img/book/buket1.PNG"/></div>
 	  	<div class="col-sm-7">
 	  		<p><a href="../inven/BookDetail.jsp">책 제목</a></p> <p>지은이 | 출판사 | 책을 펴낸 날짜</p> <p>가격</p>
 	  	</div>
 	  	<div class="col-sm-2">
 	  		<form action="basket.jsp">
    			<input type="submit" class="btn btn-default btn-block" value="장바구니에 담기">
    		</form>
    		<form action="Payment.jsp">
 	  			<input type="submit" class="btn btn-default btn-block" value="바로구매">
 	  		</form>
 	  	</div>
 	   </div>
 	  </li>
	</ul>
</div>
<!-- 페이징 -->
<div class="center">
	<ul class="pagination">
  		<li><a href="#">1</a></li>
  		<li><a href="#">2</a></li>
  		<li><a href="#">3</a></li>
  		<li><a href="#">4</a></li>
  		<li><a href="#">5</a></li>
	</ul>
</div>
</div> <!-- 베스트셀러 탭 내용 -->
</div> <!-- 끝 -->
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>