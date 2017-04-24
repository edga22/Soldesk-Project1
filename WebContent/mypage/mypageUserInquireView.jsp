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

    <style>
	#to1v th {
	   text-align:center;
	}
	</style>	
	<div class="container">
		<div class="col-sm-2 sidenav" style="float: left;">
			<jsp:include page="/mypage/mypageMenu.jsp"/>
		</div>
		<div class="col-sm-10" id="MypageUserInquire">
		  <div class="panel panel-default"> 
              <div class="panel-heading"><h2><i class="glyphicon glyphicon-pencil"></i> 1:1 문의 결과</h2></div>
              <div class="panel-body">북앤카페의 문의사항이나 불편한 거나 건의할 내용을 보내면 답변을 드립니다.</div>
            </div>
            <div class="table-responsive"> 
                <table class="table table-hover table-bordered table-striped" id="to1v">
					<%if(/* userInquireID.equals(a ) */ userInquireID== a ) { %>
					<tr>
						<th width="20%">질문제목</th>
						<td><%=userInquire.getTitle() %></td>
					</tr>
					<tr>
                        <th>등록일</th>
                        <td><%=userInquire.getDate() %></td>
                    </tr>
                    <tr>
                        <th>문의내용</th>
                        <td><%=userInquire.getContent() %></td>
                    </tr>
                     <tr>
                        <th>답변내용</th>
                        <td>
                            <%if(userInquire.getAnswer() != null && !userInquire.getAnswer().equals("")){%>
                                <%=userInquire.getAnswer()%>
                            <%}else{%>
                                답변 처리 중입니다.
                            <%}%>>
                         </td>
                    </tr>
					<%}else{ %>
					<%} %>
				</table>
			</div>
			<div class="text-right">
                <a href="/mypage/mypageUserInquireResult.jsp"><button type="button" class="btn btn-primary">문의목록</button></a>
            </div>
		</div>
	</div>
	
	<jsp:include page="/main_foot.jsp"/>
