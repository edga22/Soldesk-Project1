<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>

<%
int userInquireID = Integer.parseInt(request.getParameter("userInquireID"));

UserInquireDao uiDao = new DbBasedUserInquireDao();

UserInquire userInquire = uiDao.getUserInquire(userInquireID);
int a = userInquire.getUserInquireID();
%>
	<jsp:include page="/main_navbar.jsp"/>
	
	<div class="container">
		<div class="col-sm-2 sidenav" style="float: left;">
			<jsp:include page="/mypage/mypageMenu.jsp"/>
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
                                <label class="control-label col-sm-2" for="text">문의내용:</label>
                                <div class="col-sm-10" style="border:1px solid #999;padding:2rem;">
                                    <%=userInquire.getContent() %>
                                </div>                                
                            </div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="text">답변내용:</label>
								<div class="col-sm-10" style="border:1px solid #999;padding:2rem;">
									<%if(userInquire.getAnswer() != null && !userInquire.getAnswer().equals("")){%>
									   <%=userInquire.getAnswer()%>
									<%}else{%>
									   답변 처리 중입니다.
									<%}%>>
								</div>
							</div>							
						</form></td>
						<%}else{ %>
				<%} %>
				</tr>				
			</table>
		</div>
	</div>
	
	<jsp:include page="/main_foot.jsp"/>
