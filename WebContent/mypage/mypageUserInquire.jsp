<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="javax.activation.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>

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

<title>마이페이지 1:1문의</title>
</head>
<body>

	<jsp:include page="/main_navbar.jsp"></jsp:include>
	<div class="container">
		<div class="col-sm-2 sidenav" style="float: left;">
			<jsp:include page="mypageMain.jsp"></jsp:include>
		</div>
		<div class="col-sm-10" id="MypageUserInquire">
			<h3 style="text-align: center">1:1 문의</h3>
			<form class="form-horizontal">
				<div class="form-group">
					<!-- col-sm 2칸!! 띄운 상태이다. -->
					<label class="control-label col-sm-2" for="text">제목:</label>
					<!-- col-sm 10칸!! 차지함!-->
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title"
							autofocus="autofocus" placeholder="제목">
							
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
							style="width: 100%; hight: 800px;"
							placeholder="※구매내역(책 제목, 구매일)을 함께 남겨주시면 보다 빠른 답변이 가능합니다.">
							
							</textarea>
					</div>
				</div>
				<div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<form action="#">
								<button type="submit" class="btn btn-default"
									style="float: left;">전송</button>
							</form>
							<!-- <form action="#">
								<button type="submit" class="btn btn-default"
									style="float: left;">취소</button>
							</form> -->
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/main_foot.jsp"></jsp:include>
	<%-- 
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<%
		// SMTP 서버 주소
		String smtpHost = "127.0.0.1";	//local host 주소

		//받는 사람의 정보
		String toName = "윤광재";
		String toEmail = "dbseoen@naver.com";

		//보내는 사람의 정보
		String fromName = "";
		String fromEmail = "";	

		try {
			Properties props = new Properties();
			props.put("mail.smtp.host", smtpHost);

			Session sess = Session.getDefaultInstance(props, null);
			InternetAddress addr = new InternetAddress();
			addr.setPersonal(fromName, "UTF-8");
			addr.setAddress(fromEmail);

			// create a message
			Message msg = new MimeMessage(sess);
			msg.setFrom(addr);
			msg.setSubject(MimeUtility
					.encodeText("메일전송", "utf-8", "B"));
			msg.setContent("메일전송성공 확인", "text/html;charset=utf-8");
			msg.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(toEmail));

			Transport.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
			out.println("<script>alert('메일전송이 실패하였습니다.'); location.href='/main.jsp';</script>");
		}
		out.println("<script>alert('메일이 전송되었습니다.'); location.href='/main.jsp';</script>");
	%>
	 --%>
</body>
</html>