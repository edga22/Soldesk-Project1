<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>
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
<%
int userInquireID = Integer.parseInt(request.getParameter("userInquireID"));

UserInquireDao uiDao = new DbBasedUserInquireDao();

UserInquire userInquire = uiDao.getUserInquire(userInquireID);
int a = userInquire.getUserInquireID();
%>
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
						<form action="mypageUserInquire.jsp">
							<button type="submit" class="btn btn-default"
								style="float: right;">문의 하기</button>
						</form>
					</td>
				</tr>
				<tr>
				<%if(/* userInquireID.equals(a ) */ userInquireID== a ) { %>
					<td><form action="#" class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">질문제목:</label>
								<label class="control-label"><%=userInquire.getTitle() %></label>								
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">등록일:</label>
								<label class="control-label"><%=userInquire.getDate() %></label>								
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">답변내용:</label>
								<div class="col-sm-10">
									<textarea rows="10" cols=100% name="userInquireAsk"	style="width: 100%; hight: 900px; resize:none;"	readonly><%if(userInquire.getAnswer() != null && !userInquire.getAnswer().equals("")){%><%=userInquire.getAnswer()%><%}else{%>답변 처리 중입니다.<%}%></textarea>
								</div>
							</div>							
						</form></td>
						<%}else{ %>
					
				<%} %>
				</tr>				
			</table>
		</div>
	</div>
	<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>