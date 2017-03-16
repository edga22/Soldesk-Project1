<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% %>
<%@ page import="java.util.ArrayList"%>
<%
	class UserInfo{				
		String id = request.getParameter("ID");
		String psw1 = request.getParameter("psw1");
		String psw2 = request.getParameter("psw2");
		String name = request.getParameter("name");
		String male = request.getParameter("gender");
		String female = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String postNumber = request.getParameter("postNumber");
		String address = request.getParameter("address1")+" "+request.getParameter("address2");
		String email = request.getParameter("str_email01")+"@"+request.getParameter("str_email02");
		
		/*public UserInfo(){
			
		}
			
		public UserInfo(String id, String psw1, String psw2,String name,String male, String female,String birthday,String postNumber,String address,String email){
			this.id = id;
			this.psw1 = psw1;
			this.psw2 = psw2;
			this.name = name;
			this.male = male;
			this.female = female;
			this.birthday = birthday;
			this.postNumber = postNumber;
			this.address = address;
			this.email = email;
		}*/
	}
	ArrayList<UserInfo> user= new ArrayList<UserInfo>();
	
	response.sendRedirect("../adminpage.jsp");
%>