<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 판매 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
li {
	list-style: none;
}

a {
	padding: 0.3rem;
}

#cate-top {
	
}

#cate-side {
	margin-top: 2rem;
	background-color: white;
	border: 1px black solid;
}

#align-bar {
	margin: 1rem;
	padding: 1rem 0.3rem;
	border-bottom: 1px solid black;
}

#align-bar>.col-md-2 {
	width: 15%;
}

#align-bar>.col-md-offset-1 {
	margin-left: 5%;
}

.inSearch-group {
	padding-top: 1rem;
}

.cate-group {
	padding-top: 1rem;
}
</style>
</head>
<body>
<jsp:include page="/main_navbar.jsp"></jsp:include>
	<!-- 상품 진열 1줄에 4개씩  -->
	<div class="container">		
		<!-- 좌측 카테고리 메뉴바 -->
		
		<div class="row"
			style="float: left; margin: 0.5rem; padding: 0.2rem; border: 0.1rem solid; height: 55rem;">
			<div class="container col-sm-12">
				<br>
				<br>
				<p align="center">카테고리(구분)</p>
				<div class="panel-group" id="categori">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-title">
								<a data-toggle="collapse" data-parent="#categori" href="#menu1">국내도서</a>
							</h5>
						</div>
						<div id="menu1" class="panel-collapse collapse">
							<div class="panel-body">
								<a href="#">교양</a><br> <a href="#">소설</a><br> <a
									href="#">전공서적</a><br>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-title">
								<a data-toggle="collapse" data-parent="#categori" href="#c2">외국도서</a>
							</h5>
						</div>
						<div id="c2" class="panel-collapse collapse">
							<div class="panel-body">
								<a href="#">교양</a><br> <a href="#">소설</a><br> <a
									href="#">전공서적</a><br>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h5 class="panel-title">
								<a data-toggle="collapse" data-parent="#categori" href="#c3">eBook</a>
							</h5>
						</div>
						<div id="c3" class="panel-collapse collapse">
							<div class="panel-body">
								<a href="#">교양</a><br> <a href="#">소설</a><br> <a
									href="#">전공서적</a><br>
							</div>
						</div>
					</div>
				</div>
				<!-- 카테고리 종료 -->
			</div>
		</div>
		<div class="col-md-10" id="result">
			<!-- result -->
			<div class="row" id="align-bar">
				<div class="col-md-2 col-md-offset-1">
					<a href="#">제목순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<a href="#">저자순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<a href="#">가격순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<a href="#">출간일순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<select name="display_number" class="">
						<option value="25">25개</option>
						<option value="50">50개</option>
						<option value="100">100개</option>
					</select>
				</div>
			</div>
			<form action="/shop/Payment.jsp">
				<%
					for (int i = 1; i <= 5; i++) {
				%>
				<div class="row" style="margin-bottom: 1rem;">
					<!-- items -->
					<div class="col-md-1">
						<p><%=i%></p>
						<input type="checkbox" name="bookID" value="<%=i%>">
					</div>
					<div class="col-md-2">
						<img src="http://lorempixel.com/140/180">
					</div>
					<div class="col-md-7">
						<h3>
							책 제목<%=i%></h3>
						<p>
							저자 : 저자<%=i%>
							옮긴이 : 옮긴이
							<%=i%>
							출판사 : 시공출판사
						</p>
						<ul>
							<li>10000원 -> 9000원</li>
							<li>적립포인트 : <%=i%>%
							</li>
							<li>사은품 :</li>
						</ul>
					</div>
					<div class="col-md-2">
						<p>
							<button class="btn btn-default">장바구니 추가</button>
						</p>
						<p>
							<button class="btn btn-default" type="submit" name="bookID"
								value="<%=i%>">바로 구매</button>
						</p>
					</div>
				</div>
				<%
					}
				%>
			</form>
		</div>
		<!-- result -->
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
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>