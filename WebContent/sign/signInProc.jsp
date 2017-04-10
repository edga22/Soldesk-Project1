<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<%
	String ID = request.getParameter("ID");
	String pw = request.getParameter("pw");
	int memberID = 0;

	MemberDao memberService = new DbBasedMemberDao();
	
	if((ID != null && !ID.equals(""))
			&& (pw != null && !pw.equals(""))){
		Member temp = new Member();
		temp.setEmail(ID);
		temp.setPassword(pw);
		Member mem = memberService.loginCheck(temp);
		
		if(mem !=null && !mem.equals("")){
			memberID = mem.getMemberID();
			
			session.setAttribute("memberID",memberID);	//고유번호 세션저장
			session.setAttribute("ID",ID);				//아이디 세션저장
			
%>		
			<script>
				swal("로그인 성공<%=session.getAttribute(ID)%>님 환영합니다.");
				window.location.replace("/main.jsp");
			</script>
<%	
		}else{		
%>		
			<script>
				alert("아이디 혹은 비밀번호가 틀렸습니다.");
				window.location.replace("/sign/signInPage.jsp");
			</script>			
<%
		}
	}else{
		
	}
%>