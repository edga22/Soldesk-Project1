<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>           
<jsp:include page="/main_navbar.jsp"></jsp:include>
<body>
<div class="container">
<div class="row content">
    <div class="col-sm-2 sidenav">
<jsp:include page="mypageMain.jsp"></jsp:include>
</div>
<div class="col-sm-10">
<div id="MypageQuestion">
      <h2>자주 묻는 질문</h2>
      <h3>-Q&A</h3>
 	<a href="#">1.장바구니에 담아둔 내역이 자꾸 사라집니다.</a><br>
 	<a href="#">2.장바구니 담기가 안됩니다.</a><br>
 	<a href="#">3.장바구니 복원신청은 어떻게하나요?</a>
 	</div>
 	</div>
 	</div>
 	</div>
</body>
<jsp:include page="/main_foot.jsp"></jsp:include>
</html>