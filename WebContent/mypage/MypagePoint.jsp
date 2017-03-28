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
			<jsp:include page="MypageMain.jsp"></jsp:include>
		</div>

	<div id="MypagePoint">		
			<div class="col-sm-10">
				<h3>포인트 마일리지 보유 현황</h3>
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>구분(상태)</th>
							<th>사용일자</th>
							<th>세부내용</th>
							<th>포인트(적립/사용)</th>
							<th>총포인트</th>
						</tr>
					</thead>
					<tbody>
						<%  
							int temp = 1;
							for(int i=0; i<temp ; i++){
						%>
						<tr>
							<th><%= "구분"%></th>
							<th><%= "2017-03-27"%></th>
							<th><%= "세부내용"%></th>
							<th><%= "1820p"%></th>
							<th><%= "4000p"%></th>
						</tr>
						<%	} %>						
					</tbody>
				</table>
				</div>
			</div>
		</div>		
	</div>
	<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>