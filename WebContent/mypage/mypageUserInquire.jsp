<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao"%>
<%@ page import="dao.DbBasedMemberDao"%>
<%@ page import="domain.Member"%>

<title>마이페이지 1:1문의</title>

<script src="//cdn.ckeditor.com/4.6.2/basic/ckeditor.js"></script>

<%
	int memberID = (Integer)session.getAttribute("memberID");
	int userID = 1;
	if (memberID == 0) {
	} else {
		userID = memberID;
	}

	MemberDao mbDao = new DbBasedMemberDao();

	mbDao.getMember(userID);
	
	Member mb = mbDao.getMember(userID);
%>
<style type="text/css">
table {
    width:80%;
}
label {
    text-align:center;
}
</style>

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="col-sm-2 sidenav" style="float: left;">
		<jsp:include page="/mypage/mypageMenu.jsp"/>
	</div>
	<div class="col-sm-10" id="MypageUserInquire">
		<table>
			<tr>
				<th><h3 style="text-align: center">1:1 문의</h3></th>
			</tr>
			<tr>
				<td>
					
				</td>
			</tr>
			<tr>
				<td>
				    <form action="mypageUserInquireProc.jsp" class="form-horizontal">
						<div class="form-group">
							<!-- col-sm 2칸!! 띄운 상태이다. -->
							<label class="control-label col-sm-2" for="text">이름</label>
							<!-- col-sm 10칸!! 차지함!-->
							<div class="col-sm-10">
								<!-- memberID를 넘겨받기 위해 숨긴상태. -->
								<input type="hidden" name="qID" value="<%=memberID%>">									
								<input type="text" class="form-control" name="userInquireName"
									autofocus="autofocus" placeholder="이름"
									value="<%=mb.getName()%>" readonly>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">이메일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="userInquireEmail"
									placeholder="E-Mail" value="<%=mb.getEmail()%>" readonly>
							</div>
						</div>
						<div class="form-group">
							<!-- 질문유형을 int 값으로 받아 선택할수 있게 한다. -->
							<label class="control-label col-sm-2" for="text">질문유형</label>
							<div class="col-sm-10">									
								<input type="number" class="form-control" name="userInquireType" list="select"
									placeholder="질문유형" required>
								<datalist id="select">
									<option value="1">국내도서</option>
									<option value="2">외국도서</option>
									<option value="3">전자책</option>
									<option value="4">구매문의</option>
									<option value="5">배송문의</option>
									<option value="6">반품/교환문의</option>
									<option value="7">기타</option>
								</datalist>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="userInquireTitle"
									autofocus="autofocus" placeholder="제목" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="5" name="userInquireContents" style="resize:none;" 
									placeholder=" ※구매내역(책 제목, 구매일)을 함께 남겨주시면 보다 빠른 답변이 가능합니다."
									required></textarea>
							</div>
						</div>
						<script>
			                // Replace the <textarea id="editor1"> with a CKEditor
			                // instance, using default configuration.
			                CKEDITOR.replace( 'userInquireContents' );
			             </script>
						<div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
								    <input type="button" id="inquireResult" class="btn btn-default" style="float: right;margin-left:0.5rem;" value="문의목록">
									<button type="submit" class="btn btn-default" style="float: right;">전송</button>
									<br> <br>
								</div>
							</div>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</div>
<script>
$(document).ready(function(){    
$('#inquireResult').on('click', function(e) {
        location.href = '/mypage/mypageUserInquireResult.jsp';
     });
});
</script>

<jsp:include page="/main_foot.jsp"/>
