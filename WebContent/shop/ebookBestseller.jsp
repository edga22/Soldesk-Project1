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
<jsp:include page="/main_navbar.jsp"></jsp:include>
</div>

<div id="ebookBestseller">
<!-- 시작 -->
<div class="container"> 
<!-- 베스트셀러 탭 -->
<div class="row">
<!-- 탭 제목 -->
<ul class="nav nav-tabs">
  <li><a href="monthBestseller.jsp">월간베스트</a></li>
  <li><a href="newBestseller.jsp">신간베스트</a></li>
  <li class="active"><a href="ebookBestseller.jsp">E-book</a></li>
</ul>
</div> <!-- 탭 제목 -->

<!-- 베스트셀러 탭 내용 -->
<div class="tab-content"> 
  <div class="tab-pane fade in active">
  	<div class="row">
    	<h3 class="col-sm-10">E-book</h3>
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
 	  		<p><a href="/inven/BookDetail.jsp">책 제목</a></p> <p>지은이 | 출판사 | 책을 펴낸 날짜</p> <p>가격</p>
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
 	  		<p><a href="/inven/BookDetail.jsp">책 제목</a></p> <p>지은이 | 출판사 | 책을 펴낸 날짜</p> <p>가격</p>
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