<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>

<%@ page import="dao.MemberDao"%>
<%@ page import="dao.DbBasedMemberDao"%>
<%@ page import="domain.Member"%>
<!DOCTYPE html PUBLIC>
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
MemberDao mbDao = new DbBasedMemberDao();
UserInquireDao uiDao = new DbBasedUserInquireDao();

int memberID = (Integer) session.getAttribute("memberID");
	
Member mb = mbDao.getMember(memberID);		
UserInquire[] userInquire = uiDao.getAskTitle(memberID);	//배열로 해서 받자

/*int memberID = (Integer) session.getAttribute("memberID");
int userID = 1;
if (memberID == 0) {
} else {
	userID = memberID;
}		

MemberDao mbDao = new DbBasedMemberDao();		
Member mb = mbDao.getMember(userID);

UserInquireDao uiDao = new DbBasedUserInquireDao();
UserInquire[] userInquire = uiDao.getAskTitle(userID);	//배열로 해서 받자 */
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
					<td>
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-8" for="text" style="text-align: center;">제목</label>
								<label class="col-sm-2" for="text" style="text-align: center;">등록일</label>
								<label class="col-sm-2" for="text" style="text-align: center;">답변여부</label>
							</div>
						</form>
					</td>
				</tr>
				<!-- 1:1 질문 답변 준비 -->
				<% 
				if(userInquire.length >0){
					for(int i = 0 ; i<userInquire.length ; i++){ %>
				<tr>				
					<td>						
						<form class="form-horizontal">
							<div class="form-group">
								<a href="mypageUserInquireView.jsp?userInquireID=<%=userInquire[i].getUserInquireID()%>" class="col-sm-8"
									style="text-align: center;"><%=userInquire[i].getTitle()%></a> 
								<label class="col-sm-2" for="text" style="text-align: center;"><%=userInquire[i].getDate() %></label>
								<label class="col-sm-2" for="text" style="text-align: center;">
									<%if(userInquire[i].getState() == 1){%>
										진행중										
									<%
									}else{%>
										답변완료
									<%	
									}
									%>
								</label>
							</div>
						</form> 						
					</td>				
				</tr>
				<%
					}
				}				
				%>
			</table>
		</div>
	</div>
	<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>