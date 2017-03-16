<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>사은품 수정</title>
<style>
.add-group{
	//background-color : #e6e6e6 ;
	border : solid 1px #b3b3b3 ;
	padding-top : 1rem;
}
.display-group{
	padding-top : 1rem;
}
.display-item{
	padding-top : 0.5rem;
}
.center-wrapper{
	text-align:center;
}
p {
	margin-bottom : 3rem;
}
p .form-control {
	width : 30%;
	display : inline;
}
</style>
</head>
<body>

<div class="container"> <!-- main container -->

<div class="row">
	<div class="event event-header">
		<h2>사은품 관리</h2>
	</div>
</div>

<div class="row add-group"> <!-- Add-group -->
	<div class="col-sm-12">
	
	<div class="row">
	<div class="col-sm-2 center-wrapper">	
	<img src="http://lorempixel.com/140/180" style="width:100%; max-height:200px">	
	</div>
	
	<div class="col-sm-8">
		<p>행사 이름 : <input class="form-control" type="text" name="event_name"></p>		
		<p>상품 이름 : <input class="form-control" type="text" name="gift_name"></p>
		<p>행사 기간 : <input class="form-control" type="date" name="event_start"> ~ <input class="form-control" type="date" name="event_end"></p>
	</div>
	
	<div class="col-sm-2" style="">
		
	</div>
	</div>
	<div class="row" style="padding-top : 1rem;">
		<div class="col-sm-2">
		<div class="center-wrapper"><button class="btn btn-default" style="">사진 추가</button></div>
		</div>
		<div class="col-sm-offset-8 col-sm-2">
		<form action="#">
		<div class="center-wrapper"><button class="btn btn-primary" style="" type="submit">사은품 추가</button></div>
		</form>
		</div>
	</div>
	
	</div>
</div> <!-- Add-group -->

<div class="row display-group"> <!-- Display-group -->
<div class="col-sm-12">
	<%for(int i=1;i<=2;i++){ %>
	<div class="row display-item"> <!-- Display-item -->
	<div class="col-sm-2 center-wrapper">
	<img src="http://lorempixel.com/140/180" style="width:100%; max-height:200px">	
	</div>
	<div class="col-sm-8">
	<p>행사 이름: </p>
	<p>상품 이름: </p>
	<p>행사 기간: </p>
	</div>
	<div class="col-sm-2 center-wrapper">
	<a class="btn btn-default" href="">사은품 수정</a>
	<div style="height: 1rem;"></div>
	<a class="btn btn-danger" href="">사은품 삭제</a>
	</div>
	
	</div>  <!-- Display-item -->
	<%} %>
</div>
</div> <!-- Display-group -->
	
</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>