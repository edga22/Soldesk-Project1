<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="mgr.search.SearchMgr"
	import="mgr.search.SearchBox" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<%
request.setCharacterEncoding("utf-8"); // 항상 UTF8로 처리한다
Book[] scResult = null;	// 검색 결과를 저장할 배열

String scTarget = "";
String scWord = "";
if(request.getParameter("SearchTarget") != null) scTarget = request.getParameter("SearchTarget");
if(request.getParameter("SearchWord") != null) scWord = request.getParameter("SearchWord");

// 결과 내 검색일때
if(request.getParameter("inSc") != null && request.getParameter("inSc").equals("1")){
	SearchBox scbox = null;
	if(session.getAttribute("scbox") != null){
		scbox = (SearchBox)session.getAttribute("scbox");
		if(!scWord.equals(""))scbox.wordFilter(scWord);
		scResult = scbox.getBooks();
	}	
}
else{ // 최초 검색일때
	SearchMgr scmgr = new SearchMgr();
	if(scTarget.equals("") || scTarget.equals("all")){
		scResult = scmgr.getBooks(scWord);
	}
	
	// 검색결과를 세션에 저장
	SearchBox scbox = new SearchBox(scResult);
	session.setAttribute("scbox", scbox);	
}

%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
#cate-top{
}

#cate-side {
	margin-top : 2rem;
	background-color : white ;
	border : 1px black solid;
}

#align-bar {
	margin : 1rem;
	padding : 1rem 0.3rem;
	border-bottom : 1px solid black;
}
#align-bar > .col-md-2 {
	width : 15%;
}
#align-bar > .col-md-offset-1 {
	margin-left : 5%;
}
#booktitle {
	font-size : 2rem;
	margin-top : -0.5rem;
}

.inSearch-group{
	padding-top : 1rem;
}
.cate-group{
	padding-top : 1rem;
}
</style>

<title>Book&Cafe - 검색 결과</title>
</head>
<body>

<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container"> <!-- Main container -->
<div class="row" id="cate-top">
	<ul class="nav nav-tabs">
		<li class="active"><a href="#">통합검색(100)</a></li>
		<li><a href="#">국내도서(50)</a></li>
		<li><a href="#">외국도서(25)</a></li>
		<li><a href="#">E-Book(25)</a></li>
	</ul>
</div>
<div class="row">
	<div class="col-md-2" id="cate-side">
		<div class="inSearch-group">			
			<p>결과 내 검색</p>
			<form action="">
			<input type="text" style="width : 75%;" name="SearchWord" value="<%=scWord%>">
			<button class="btn btn-default btn-sm" type="submit" name="inSc" value="1"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>	
			</form>		
		</div>
		<div class="cate-group">		
			<p>카테고리 선택</p>
			<ul class="list-group">
				<li class="list-group-item">소설 <span class="badge">12</span></li>
				<li class="list-group-item">과학 <span class="badge">12</span></li> 
			</ul>
		</div>
	</div>
	<div class="col-md-10" id="result"> <!-- result -->
		<div class="row" id="align-bar">
			<div class="col-md-2 col-md-offset-1"><a>제목순</a></div>
			<div class="col-md-2 col-md-offset-1"><a>저자순</a></div>
			<div class="col-md-2 col-md-offset-1"><a>가격순</a></div>
			<div class="col-md-2 col-md-offset-1"><a><b>출간일순</b></a></div>
			<div class="col-md-2 col-md-offset-1">
			<select name="display_number" class="">
				<option value="25">25개</option>
				<option value="50">50개</option>
				<option value="100">100개</option>
			</select>
			</div>
		</div>
		
		<%if(scResult != null){if(scResult.length <= 1){
			for(int i=1;i<=scResult.length;i++){
			int idx = i-1;%>
		<div class="row" style="margin-bottom: 1rem;"> <!-- items -->
			<div class="col-md-1">
				<p><%=i %>.</p>
				<input type="checkbox" name="bookID" value="<%=scResult[idx].getBookID() %>">
			</div>
			<div class="col-md-2"><a href="/inven/bookDetail.jsp?=bookID=<%=scResult[idx].getBookID()%>"><img src="<%=scResult[idx].getImageID()%>"></a></div>
			<div class="col-md-7">
				<p id="booktitle"><a href="/inven/bookDetail.jsp?bookID=<%=scResult[idx].getBookID()%>"><%=scResult[idx].getBookName() %></a></p>
				<p>저자 : <%=scResult[idx].getAuthor() %> 출판사 : <%=scResult[idx].getPublisher() %></p>
				<ul>
					<li><%=scResult[idx].getPrice() %>원</li>
					<li>적립포인트 : <%=i %>%</li>
					<li>사은품 : </li>
				</ul>
			</div>
			<div class="col-md-2">
				<p><a class="btn btn-default" href="/shop/basket.jsp?bookID=<%=scResult[idx].getBookID()%>">장바구니 추가</a></p>
				<p><a class="btn btn-default" href="/shop/payment.jsp?bookID=<%=scResult[idx].getBookID()%>">바로 구매</a></p>
			</div>
		</div>
		<%}}else{%>
		<div class="row" style="margin-bottom: 1rem;">
			<div class="col-md-5 col-md-offset-1"><p>검색 결과가 없습니다.</p></div>
		</div>
		<%		
		}		
		}else{%>
		<div class="row" style="margin-bottom: 1rem;">
			<div class="col-md-5 col-md-offset-1"><p>검색 결과가 없습니다.</p></div>
		</div>
		<%}%>
		
	</div><!-- result -->
</div>

</div> <!-- Main container -->
<jsp:include page="/main_foot.jsp"></jsp:include>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>