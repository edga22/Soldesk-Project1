<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book" %>
<!DOCTYPE html PUBLIC>
<%
	
%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>이벤트 수정</title>
<style> 

body {
	border-radius: 0px;
}

#percent{
	width : 7rem;
}
</style>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->

<div class="row">
	<div class="event event-header">
		<h2>이벤트 수정</h2>
	</div>
</div>

<div class="row">
	<form class="form-inline" action="/admin/event/eventmodOK.jsp">
	<div class="form-group">
		<p class="form-control-static">할인율:</p>
		<input type="number" max="100" class="form-control" id="percent" name="dc_percent">
		
		<p class="form-control-static">%   사은품:</p>
		<select name="gift" class="form-control">
			<option value="사은품1">사은품1</option>
			<option value="사은품2">사은품2</option>
		</select>
		<button class="btn btn-primary" type="submit">적용</button>
		<input type="hidden" name="" value=""> <!-- 받아온 책 id를 넘기는 히든인풋 -->
	</div>
	</form>
</div>

<div class="row">
	<div class="panel panel-primary">
      <div class="panel-heading">대상 도서</div>
      <div class="panel-body">
      	<div class="row">
      		<div class="col-md-2">
      			<img src="http://lorempixel.com/140/180">
      			<p>책 제목1</p>
      		</div>
      	</div>      	
      </div>
    </div>
</div>

</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>