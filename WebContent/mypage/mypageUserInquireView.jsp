<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>마이페이지 1:1문의결과</title>
</head>
<body>
	<jsp:include page="/main_navbar.jsp"></jsp:include>
	<div class="container">
		<div class="col-sm-2 sidenav" style="float: left;">
			<jsp:include page="mypageMain.jsp"></jsp:include>
		</div>
		<div class="col-sm-10" id="MypageUserInquire">
			<table class="col-sm-10">
				<tr>
					<th><h3 style="text-align: center;">1:1 문의</h3></th>
				</tr>
				<tr>
					<td>
						<!-- <form action="mypageUserInquireResult.jsp">
							<button type="submit" class="btn btn-default"
								style="float: right;">문의 결과</button>
						</form> -->
						<form action="mypageUserInquire.jsp">
							<button type="submit" class="btn btn-default"
								style="float: right;">문의 하기</button>
						</form>
					</td>
				</tr>
				<tr>
					<td><form action="#" class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">질문제목:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="title"
										placeholder="질문제목" readonly>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">등록일:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="title"
										placeholder="질문제목" readonly>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">답변내용:</label>
								<div class="col-sm-10">
									<textarea rows="10" cols=100% name="contents"
										style="width: 100%; hight: 800px;"
										placeholder=" ※구매내역(책 제목, 구매일)을 함께 남겨주시면 보다 빠른 답변이 가능합니다."
										readonly></textarea>
								</div>
							</div>							
						</form></td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>