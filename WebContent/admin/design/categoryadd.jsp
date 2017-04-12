<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%@ page import="java.util.List" %>
<%
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
	cate.setCode2(code1);
	cate.setCategoryName(name);
	cate.setCategorySubject(subject);
	cate.setCategoryUse(use);    
	
	CategoryMgr mymgr = new CategoryMgr();
	
	if(mymgr.addCategory(cate) == true){ %>
		<script>
		   alert("카테고리 생성성공");
		</script>
<%  }else{ %>
	   <script>
	       alert("카테고리 생성실패");
	   </script>
<%  }
}
%>
