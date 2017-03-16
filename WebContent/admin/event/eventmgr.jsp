<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>이벤트 관리</title>
<style>
body {
	border-radius: 0px;
}
h3 {
	margin-top : 0.5em;
}

.result-group{
	margin-bottom : 1.5em;
}
</style>
</head>
<body>

<div class="container"> <!-- main container -->

<div class="row">
	<div class="event event-header">
		<h2>이벤트 관리</h2>
	</div>
</div>

<div class="row">
	<form class="form-inline" action="">
	<div class="form-group">
		<p class="form-control-static">대상도서:</p>
		<select name="type" class="form-control">
			<option value="title">제목</option>
			<option value="author">저자</option>
			<option value="publisher">출판사</option>
		</select>
 		<input type="text" class="form-control" id="keyword" name="keyword">
 		<button class="btn btn-primary" type="submit">검색</button>
		<button class="btn btn-info" type="submit" name="type" value="all">전체 이벤트 불러오기</button>
	</div>	
	</form>
</div>

<!-- 결과물 출력 반복 -->
<%for(int i=1;i<=3;i++){ %> 
<div class="row result-group">
	<div class="col-md-1">
		<h5><%=i %>.</h5>
		<div class="checkbox">
		<label><input type="checkbox" name="item"value="<%= i %>"></label>
		</div>
	</div>
	<div class="col-md-2"><img src="http://lorempixel.com/140/180"></div>
	<div class="col-md-6">
		<h3>책 제목<%=i %></h3>
		<p>저자 : 저자<%=i %>  옮긴이 : 옮긴이 <%=i %>  출판사 : 시공출판사</p>
		<p>진행중인 이벤트 정보</p><br>
		<ul>
			<li>할인 : %</li>
			<li>사은품 : </li>
		</ul>
	</div>
	<div class="col-md-3">
		<button class="btn btn-primary">이벤트 수정</button>
	</div>
</div>
<%} %>
<!-- 반복 끝 -->

</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>