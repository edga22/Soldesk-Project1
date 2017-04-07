<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<%
	String ID = request.getParameter("ID");
	String pw = request.getParameter("pw");
	int memberID = 0;

	MemberService memberService = new MemberService();
	
	if((ID != null && !ID.equals(""))
			&& (pw != null && !pw.equals(""))){
		Member temp = new Member();
		temp.setEmail(ID);
		temp.setPassword(pw);
		Member mem = memberService.loginCheck(temp);
		
		if(mem !=null && !mem.equals("")){
			memberID = mem.getMemberID();
			
			session.setAttribute("memberID",memberID);
			session.setAttribute("ID",ID);
			
%>		
			<script>
				alert("로그인 성공");
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