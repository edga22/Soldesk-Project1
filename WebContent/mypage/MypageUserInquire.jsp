<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div>
	<h3 style="text-align:center">1:1 문의</h3>
		<form class="form-horizontal">
			<div class="form-group">
				<!-- col-sm 2칸!! 띄운 상태이다. -->
				<label class="control-label col-sm-2" for="text">제목:</label>
				<!-- col-sm 10칸!! 차지함!-->
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title" autofocus="autofocus"
					placeholder="제목">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">이름:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="author"
					placeholder="이름">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">이메일:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="publicsher"
					placeholder="E-Mail">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">내용:</label>
				<div class="col-sm-10">
					<textarea rows="10" cols=100% name="contents"
						style="width: 100%; hight:800px;"
						placeholder="※구매내역(책 제목, 구매일)을 함께 남겨주시면 보다 빠른 답변이 가능합니다."
					 ></textarea>
				</div>
			</div>
			<div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
					<form action="#">
						<button type="submit" class="btn btn-default" style="float: left;">전송</button>
					</form>
					<form action="#">
						<button type="submit" class="btn btn-default" style="float: left;">취소</button>
					</form>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>