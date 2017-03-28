<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container">
	<div class="row content">
    	<div class="col-sm-2 sidenav">
			<jsp:include page="/mypage/MypageMain.jsp"></jsp:include>
		</div>
<div class="col-sm-10">
      <h2>개인정보 수정</h2>
      <br>
      <h4>회원정보</h4>
      <table class="table table-bordered">
	<thead>
		<tr>
			<th>회원번호</th>
			<td><%=152%></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>아이디</th>
			<td><%="mosa10"%></td>
		</tr>
		<tr>
			<th>성명</th>
			<td><%= "송성우"%></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><%= "송싱우"%><input type="button"class="btn btn-default" name="" value="닉네임변경"></td>
		</tr>
		<tr>
			<th>성별</th>
			<td><input type="radio" name="radio"checked="checked">남 
				<input type="radio" name="radio">여</td>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<td><%="911008-1011111"%></td>
		</tr>

		<tr>
			<th>E-mail</th>
			<td><input type="text" name=""><br>
			<input type="radio" name="" checked>수신
			<input type="radio" name="">수신거부</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="button"class="btn btn-default"name="" value="비밀번호변경"></td>
		</tr>
	</tbody>
	</table>
     <input type="submit" name=""class="btn btn-primary" value="수정완료">
  </div>
  </div>
  </div>
  <jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>