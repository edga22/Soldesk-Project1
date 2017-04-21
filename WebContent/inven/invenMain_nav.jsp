<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container" id="bimv">
	<h3> 재고관리 페이지 입니다.</h3><br>
	<form action="bookList.jsp">	
	 <input type="text" name="bookName" placeholder="도서 제목" required>
	 <button type="submit" class="btn btn-info btn-xs glyphicon glyphicon-search">검색</button>
	 <a href="/inven/bookListAll.jsp" class="btn btn-info btn-sm glyphicon glyphicon-list">전체검색</a>
	 <a href="/inven/bookAdd.jsp" class="btn btn-success btn-sm glyphicon glyphicon-plus">도서추가</a><br>
	</form>		
</div>
</body>
</html>
