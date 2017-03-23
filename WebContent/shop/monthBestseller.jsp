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
<!-- 시작 -->
<div class="container"> 
<!-- 베스트셀러 패널 -->
<div class="panel panel-default"> 
  <div class="panel-heading"><h2>베스트셀러</h2></div>
</div> <!-- 베스트셀러 패널 -->

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
 	  		<p><a href="#">책 제목</a></p> <p>지은이 | 출판사 | 책을 펴낸 날짜</p> <p>가격</p>
 	  		<p>지금 주문하면 언제(0일,0요일) 도착 예정입니다</p>
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
 	  		<p><a href="#">책 제목</a></p> <p>지은이 | 출판사 | 책을 펴낸 날짜</p> <p>가격</p>
 	  		<p>지금 주문하면 언제(0일,0요일) 도착 예정입니다</p>
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
</body>
</html>