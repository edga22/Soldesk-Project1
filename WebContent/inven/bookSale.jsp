<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 판매 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
 li { list-style:none;  }
 a { padding:0.3rem;}
</style>
</head>
<body>

<br><br><br>
<!-- 상품 진열 1줄에 4개씩  -->
<div class="container">
<!-- 좌측 카테고리 메뉴바 -->
	<div class="row" style="float:left; margin:0.5rem; padding:0.2rem; border:0.1rem solid; height:55rem;">
		<div class="container col-sm-12"><br><br>	
		<p align="center">카테고리</p>
  		 <div class="panel-group" id="categori">
    		<div class="panel panel-default">
     			<div class="panel-heading">
      		  		<h5 class="panel-title">
       		   		  <a data-toggle="collapse" data-parent="#categori" href="#menu1">국내도서</a>
       		  		</h5>
     			</div>
      			<div id="menu1" class="panel-collapse collapse">
        			<div class="panel-body">
        			  <a href="#">교양</a><br>
        			  <a href="#">소설</a><br>
        			  <a href="#">전공서적</a><br>
        			</div>
      			</div>
    		</div>
    		<div class="panel panel-default">
     			<div class="panel-heading">
      		  		<h5 class="panel-title">
       		   		  <a data-toggle="collapse" data-parent="#categori" href="#c2">해외도서</a>
       		  		</h5>
     			</div>
      			<div id="c2" class="panel-collapse collapse">
        			<div class="panel-body">
        			<a href="#">교양</a><br>
        			<a href="#">소설</a><br>
        			<a href="#">전공서적</a><br>
        			</div>
      			</div>
    		</div>
    		<div class="panel panel-default">
     			<div class="panel-heading">
      		  		<h5 class="panel-title">
       		   		  <a data-toggle="collapse" data-parent="#categori" href="#c3">잡지</a>
       		  		</h5>
     			</div>
      			<div id="c3" class="panel-collapse collapse">
        			<div class="panel-body">
        			<a href="#">교양</a><br>
        			<a href="#">소설</a><br>
        			<a href="#">전공서적</a><br>
        			</div>
      			</div>
    		</div>
  		</div>
<!-- 카테고리 종료 -->    		
		</div>			
	</div>
<!-- 상품 1열. -->
	<div class="row" align="center">
		<div class="col-sm-4" style="border:0.1rem solid; margin:0.5rem;">
			<a href="BookDetail.jsp">
				<img src="img/book1.jpg" style="height:250px; float:left; margin:1rem;">
			</a>	
				<br><br>
				<div>
				책제목 : 자존감수업<br>
				출판사 : 미디어북스<br>
				저  자 : 윤홍균<br>	
				금  액 : 12500원<br><br><br><br><br><br>
				</div>
			
			<div align="center" style="margin:0.5rem;">			
			<a href="../shop/Payment.jsp" class="btn btn-default">즉시 구매</a>
			<a href="#" class="btn btn-default">찜하기</a>
			</div>			
		</div>
		<div class="col-sm-4" style="border:0.1rem solid; margin:0.5rem;">
			<a href="BookDetail.jsp">
				<img src="img/book1.jpg" style="height:250px; float:left; margin:1rem;">
			</a>	
				<br><br>
				<div>
				책제목 : 자존감수업<br>
				출판사 : 미디어북스<br>
				저  자 : 윤홍균<br>	
				금  액 : 12500원<br><br><br><br><br><br>
				</div>
			
			<div align="center" style="margin:0.5rem;">			
			<a href="../shop/Payment.jsp" class="btn btn-default">즉시 구매</a>
			<a href="#" class="btn btn-default">찜하기</a>
			</div>			
		</div>								
<!-- 2열 -->	
		<div class="col-sm-4" style="border:0.1rem solid; margin:0.5rem;">
			<a href="BookDetail.jsp">
				<img src="img/book1.jpg" style="height:250px; float:left; margin:1rem;">
			</a>	
				<br><br>
				<div>
				책제목 : 자존감수업<br>
				출판사 : 미디어북스<br>
				저  자 : 윤홍균<br>	
				금  액 : 12500원<br><br><br><br><br><br>
				</div>
			
			<div align="center" style="margin:0.5rem;">			
			<a href="../shop/Payment.jsp" class="btn btn-default">즉시 구매</a>
			<a href="#" class="btn btn-default">찜하기</a>
			</div>			
		</div>
		<div class="col-sm-4" style="border:0.1rem solid; margin:0.5rem;">
			<a href="BookDetail.jsp">
				<img src="img/book1.jpg" style="height:250px; float:left; margin:1rem;">
			</a>	
				<br><br>
				<div>
				책제목 : 자존감수업<br>
				출판사 : 미디어북스<br>
				저  자 : 윤홍균<br>	
				금  액 : 12500원<br><br><br><br><br><br>
				</div>
			
			<div align="center" style="margin:0.5rem;">			
			<a href="../shop/Payment.jsp" class="btn btn-default">즉시 구매</a>
			<a href="#" class="btn btn-default">찜하기</a>
			</div>			
		</div>
		
		<br><br>
	</div>	
<!-- 하단 페이지 바 -->
	<div align="center">
	<ul class="pagination">
		<li><a href="#">◁</a></li>  
		<li><a href="#">1</a></li>  
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">▷</a></li>
	</ul>
	</div>

</div>

</body>
</html>