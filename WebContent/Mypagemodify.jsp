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

      <h2>개인정보 수정</h2>
      <br>
      <h4>회원정보</h4>
      <table class="table table-bordered">
	<thead>
		<tr>
			<th>회원번호</th>
			<td>123456</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>아이디</th>
			<td>mosa10</td>
		</tr>
		<tr>
			<th>성명</th>
			<td>송성우</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td>꾸겜꼑<button type="button">변경하기</button></td>
		</tr>
		<tr>
			<th>성별</th>
			<td><input type="radio" name="gender"checked>남
			<input type="radio" name="gender">여
			</td>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<td>000000-000000</td>
		</tr>
		<tr>
			<th>E-mail</th>
			<td><input type="text" name="email"><br>
			<input type="radio" name="email">수신
			<input type="radio" name="email">수신거부</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><button type="button">비밀번호 변경하기</button></td>
		</tr>
		
	</tbody>
	</table>
     <input type="submit" value="수정완료">

  
</body>
</html>