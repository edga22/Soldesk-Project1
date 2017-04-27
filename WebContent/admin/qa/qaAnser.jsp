<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>1:1 문의 답변</title>
<style>
body {
    border-radius: 0px;
}
h3 {
    margin-top : 0.5em;
}

.result-group{
    margin-bottom : 1.5em;
}
</style>
</head>
<body>
<%

int userInquireID = Integer.parseInt(request.getParameter("userInquireID"));

UserInquireDao uiDao = new DbBasedUserInquireDao();

UserInquire userInquire = uiDao.getUserInquire(userInquireID);
int a = userInquire.getUserInquireID();


%>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->

<div class="row">
    <div class="event event-header">
        <h2>문의 답변하기</h2>
    </div>

<table class="table">
		<tr>
				<%if(userInquireID== a ) { %>
					<td><form action="qaAnserProc.jsp" class="form-horizontal">
							<div class="form-group">
								<input type="hidden" name="UserInquireID" value="<%=userInquire.getUserInquireID()%>">		
								<label class="control-label col-sm-2" for="text">질문제목:</label>
								<label class="control-label"><%=userInquire.getTitle() %></label>								
							</div>							
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">등록일:</label>
								<label class="control-label"><%=userInquire.getDate() %></label>								
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">질문내용:</label>
								<div class="col-sm-10">
									<div class="panel panel-default">
										<div class="panel-body"><%=userInquire.getContent() %></div>
									</div>
								</div>
							</div>			
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">답변내용:</label>
								<div class="col-sm-10">
									<textarea rows="10" cols=100% name="userInquireAsk"
										style="width: 100%; hight: 900px; resize:none;"><%
										if(userInquire.getAnswer() == null || userInquire.getAnswer().equals("")){%> <%										
										}else{%><%=userInquire.getAnswer()%><%}%></textarea>
								</div>
							</div>
							<div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-default"
											style="float: right;">전송</button>
										<br> <br>
									</div>
								</div>
							</div>						
						</form>
					</td>
						<%}else{ %>
					
				<%} %>
				</tr>
</table>

</div>
</div> <!-- main container -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>