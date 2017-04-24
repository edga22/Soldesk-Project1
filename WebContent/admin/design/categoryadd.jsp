<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%@ page import="java.util.List" %>
<%
response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8");
String code1str = request.getParameter("code1");
String code2str = request.getParameter("code2");
String name = request.getParameter("categoryName");
String subject = request.getParameter("categorySubject");
String usestr = request.getParameter("categoryUse");

if(code1str != null){
	int code1 = Integer.parseInt(code1str);
	int code2 = (code2str != null)?Integer.parseInt(code2str):0;
	int use = (usestr != null)?Integer.parseInt(usestr):0;

	Category cate = new Category();
	cate.setCode1(code1);
	cate.setCode2(code2);
	cate.setCategoryName(name);
	cate.setCategorySubject(subject);
	cate.setCategoryUse(use);    
	
	CategoryMgr mymgr = new CategoryMgr();
	
	if(mymgr.addCategory(cate) == true){ %>
	<!DOCTYPE html>
	<html>
	<head>  
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	</head>
    <body>
		<script>
			swal({
	            title: "성공",
	            text: "카테고리 생성성공",
	            type: "success"
	        },
	                function(){
	            window.location.replace("/admin/design/categorymgr.jsp");
	            
	        });
		</script>
<%  }else{ %>
	   	<script>
		   	swal({
	            title: "실패",
	            text: "카테고리 생성실패",
	            type: "error"
	        },
	                function(){
	            window.location.replace("/admin/design/categorymgr.jsp");
	            
	        });
	   	</script>
<%  }
}
%>
</body>
</html>