<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>

<%@ page import="dao.MemberDao"%>
<%@ page import="dao.DbBasedMemberDao"%>
<%@ page import="domain.Member"%>

<title>마이페이지 1:1문의결과</title>

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

	<jsp:include page="/main_navbar.jsp"/>
	
	<style>
	#to1 th, #to1 td{
		text-align:center;
	}
	#to1 .infot {
		text-align:left;
	}
	</style>
	
	<div class="container">
		<div class="col-sm-2 sidenav" style="float: left;">
			<jsp:include page="/mypage/mypageMenu.jsp"></jsp:include>
		</div>
		<div class="col-sm-10" id="MypageUserInquire">
			<div class="panel panel-default"> 
			  <div class="panel-heading"><h2><i class="glyphicon glyphicon-pencil"></i> 1:1 문의</h2></div>
			  <div class="panel-body">북앤카페의 문의사항이나 불편한 거나 건의할 내용을 보내면 답변을 드립니다.</div>
			</div>
			<div class="table-responsive"> 
				<table class="table table-hover table-striped" id="to1">
					<tr class="info">
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>답변여부</th>
					</tr>
					<!-- 1:1 질문 답변 준비 -->
					<% 
					if(userInquire.length >0){
						for(int i = 0 ; i<userInquire.length ; i++){ %>
					<tr>
						<td><%=i+1 %></td>				
						<td class="infot">						
							<a href="/mypage/mypageUserInquireView.jsp?userInquireID=<%=userInquire[i].getUserInquireID()%>">
							<%=userInquire[i].getTitle()%></a>
						</td>
						<td><%=userInquire[i].getDate() %></td>
						<td>
						<% if(userInquire[i].getState() == 1){ %>
							진행중
						<%
						}else{ %>
							답변완료
						<% } %>
						</td>									
					</tr>
					<%
						}
					}				
					%>
				</table>
			</div>
			<div class="text-right">
				<a href="/mypage/mypageUserInquire.jsp"><button type="button" class="btn btn-primary">문의하기</button></a>
			</div>
		</div>
	</div>
	
	<jsp:include page="/main_foot.jsp"/>
