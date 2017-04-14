<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.SimpleTimeZone"%>
<%@ page import="java.util.Locale"%>

<%@ page import="domain.Member"%>
<%@ page import="dao.MemberDao"%>
<%@ page import="dao.DbBasedMemberDao"%>

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
<title>마이페이지 1:1문의</title>
<%
	//한글 인식처리 하기 위한 유니코드 처리
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");

	/* Member mb = new Member(); */
	MemberDao memberService = new DbBasedMemberDao();

	String ID = (String) session.getAttribute("ID");
	int userID = (Integer) session.getAttribute("memberID");

	// db에 있는 아이디면 연결
	Member mbtm = memberService.getMember(userID);

	String uiem = request.getParameter("userInquireEmail"); // 질문자 이메일
	String uiqt = request.getParameter("userInquireType"); // 질문 유형
	String uit = request.getParameter("userInquireTitle"); // 질문 제목
	String uic = request.getParameter("userInquireContents"); // 질문 내용

	if (uiem == null || uiem.equals("")) {

	} else {

		UserInquire ui = new UserInquire();
		UserInquireDao newUserInquire = new DbBasedUserInquireDao();

		java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());

		ui.setqType(uiqt);
		ui.setqTitle(uit);
		ui.setqContent(uic);
		ui.setqDate(date);

		newUserInquire.addUserInquire(ui);

		/* //오늘 날짜 (String type/yyyy-mm-dd)
		Date dateNow=Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST")).getTime();
		SimpleDateFormat fommatter = new SimpleDateFormat("yyyy/MM/dd",Locale.getDefault());
		 */

		/* SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		String str = transFormat.format("today");	
		Date to = new Date(str); */

		/* DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		 */
		/* java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime()); */

		/* 
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		 */

		/* date = (Date)formatter.parse(str_date); */

		/* setInquireDate(new Date(utilDate.getTime()); */

		/* 
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");

		String str = dayTime.format(new Date(time));
		
		
		DateFormat df = new SimpleDateFormat("HH:mm:ss"); // HH=24h, hh=12h
		String str = df.format(today);
		System.out.println(str);
		  
		Date date = new Date(today);
		 */

	}
%>
<script>
		swal({
		title: "성공",
		text: "<%=mbtm.getEmail()%> 님 환영합니다.",
		type: "success"
		},
			function(){
		window.location.replace("mypage/mypageUserInquireResult.jsp");
		});
	</script>
</head>
<body>

</body>
</html>