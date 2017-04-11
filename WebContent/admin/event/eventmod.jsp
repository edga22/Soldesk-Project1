<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		import="mgr.BookMgr" %>
<!DOCTYPE html PUBLIC>

<%
String[] bookIDs;
int[]	targetIDs = null;
BookMgr bookmgr = null;

request.setCharacterEncoding("utf-8");
if(request.getParameterValues("bookID")!=null){
	bookIDs = request.getParameterValues("bookID");
	bookmgr = new BookMgr();
	targetIDs = new int[bookIDs.length];
	for(int i=0;i<bookIDs.length;i++) targetIDs[i] = Integer.parseInt(bookIDs[i]);
}
else{
	response.sendRedirect("/admin/event/eventmgr.jsp");
}


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
<form action="/admin/event/eventmodOK.jsp">
<div class="row">
	
	<div class="form-inline form-group">
		<p class="form-control-static">할인율:</p>
		<input type="number" max="100" class="form-control" id="percent" name="dc_percent">
		
		<p class="form-control-static">%   사은품:</p>
		<select name="gift" class="form-control">
			<option>준비된 사은품이 없습니다</option>
		</select>
		
		<p style="margin-top:0.5rem;">행사 기간 : <input class="form-control" type="date" name="event_start"> ~ <input class="form-control" type="date" name="event_end"> <button class="btn btn-primary" type="submit">적용</button></p>
			
	</div>
	
</div>

<div class="row">
	<div class="panel panel-primary">
      <div class="panel-heading">대상 도서</div>
      <div class="panel-body">
      	<div class="row">
      	<%if(targetIDs != null){ for(int target : targetIDs){ 
      		Book targetbook = bookmgr.getBook(target);
      	%>
      		<div class="col-md-2">
      			<img src="<%=targetbook.getImageID()%>">
      			<p><%=targetbook.getBookName() %></p>
      			<input type="hidden" name="bookID" value="<%= targetbook.getBookID() %>" /> <!-- 받아온 책 id를 넘기는 히든인풋 -->
      		</div>
      	<%}} %>
      	</div>      	
      </div>
    </div>
</div>
</form>

</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>