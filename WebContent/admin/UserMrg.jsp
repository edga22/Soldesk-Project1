<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>관리자 페이지</title>
</head>
<body>
<div class="container" id="pws5">
	<jsp:include page="../logo.jsp"/>
	<div class="form-group">
	<form>
		<div class="col-sm-2">
		<select class="form-control" id="memberSearch">
			<option>아이디</option>
			<option>이름</option>
			<option>생년월일</option>
			<option>주소</option>
			<option>전화번호</option>
			<option>이메일</option>
		</select>
		</div>
		<div class="input-group" style="width:200px">
			<input type="text" class="form-control" placeholder="Search">
			<div class="input-group-btn">
				<button class="btn btn-default" type="submit">
				<i class="glyphicon glyphicon-search"></i>
 				</button>
			</div>
		</div>
		<table class="table table-hover">
		<thead>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>생년월일</td>
			<td>주소</td>
			<td>전화번호</td>
		</tr>
		</thead>
		<tbody>
		<tr>
			<th><%=request.getParameter("str_email01")+"@"+request.getParameter("str_email02")%></th>
			<th><%=request.getParameter("name")%></th>
			<th><%=request.getParameter("birthday") %></th>
			<th><%=request.getParameter("address1")+" "+request.getParameter("address2") %></th>
			<th><%=request.getParameter("phoneNumber") %></th>
		</tr>
		</tbody>
	</table>
	</form>
	</div>
</div>
</body>
</html>