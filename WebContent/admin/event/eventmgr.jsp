<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mgr.search.SearchMgr"
		import="mgr.EventMgr"
		import="domain.Book"
 %>
<!DOCTYPE html PUBLIC>

<%
request.setCharacterEncoding("utf-8");
String scTarget = "";
String scWord = "";
Book[] scResult = null;	// 검색 결과를 저장할 배열
SearchMgr scmgr = new SearchMgr();

if(request.getParameter("SearchTarget") != null) scTarget = request.getParameter("SearchTarget");
if(request.getParameter("SearchWord") != null) scWord = request.getParameter("SearchWord");

if(scTarget.equals("all") && !scWord.equals("")){
	scResult = scmgr.getBooks(scWord);
}
else {
	scResult = scmgr.getBooks("");
}
%>

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

#booktitle {
	font-size : 2rem;
	margin-top : -0.5rem;
}

.result-group{
	margin-bottom : 1.5em;
}
</style>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->

<div class="row">
	<div class="event event-header">
		<h2>이벤트 관리</h2>
	</div>
</div>

<div class="row">
	<form class="form-inline">
	<div class="form-group">
		<p class="form-control-static">대상도서:</p>
		<select name="SearchTarget" class="form-control">
			<option value="all">통합</option>
			<option value="title">제목</option>
			<option value="author">저자</option>
			<option value="publisher">출판사</option>
		</select>
 		<input type="text" class="form-control" id="keyword" name="SearchWord">
 		<button class="btn btn-primary" type="submit">검색</button>
		<button class="btn btn-info" type="submit" name="type" value="all">전체 이벤트 불러오기</button>
	</div>	
	</form>
</div>

<!-- 결과물 출력 반복 -->
<form action="/admin/event/eventmod.jsp">
<% 
int i = 1;
for(Book result: scResult){ %> 
<div class="row result-group">
	<div class="col-md-1">
		<h5><%=i %>.</h5>
		<div class="checkbox">
		<label><input type="checkbox" name="bookID"value="<%= result.getBookID() %>"></label>
		</div>
	</div>
	<div class="col-md-2"><img src="<%=result.getImageID()%>"></div>
	<div class="col-md-6">
		<p id="booktitle"><%=result.getBookName() %></p>
		<p>저자 : <%= result.getAuthor() %>  출판사 : <%= result.getPublisher() %></p>
		<p>진행중인 이벤트 정보</p>
		<ul>
			<li>할인 : %</li>
			<li>사은품 : </li>
		</ul>
	</div>
	<div class="col-md-3">
		<a class="btn btn-primary" href="/admin/event/eventmod.jsp?bookID=<%= result.getBookID() %>">이벤트 수정</a>
	</div>
</div>
<%i++;} %>
<div class="row">
	<div class="col-md-12">
		<button class="btn btn-info" type="submit">선택 수정</button>
	</div>
</div>
</form>
<!-- 반복 끝 -->

</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>