<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%
response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8");
String categoryid = request.getParameter("category_ID");
String code1str = request.getParameter("code1");
String code2str = request.getParameter("code2");
String name = request.getParameter("categoryName");
String subject = request.getParameter("categorySubject");
String usestr = request.getParameter("categoryUse");

if(categoryid != null){
	
    int categoryID = Integer.parseInt(categoryid);
    int code1 = (code1str != null)?Integer.parseInt(code1str):0;
    int code2 = (code2str != null)?Integer.parseInt(code2str):0;
    int use = (usestr != null)?Integer.parseInt(usestr):0;
    
    CategoryMgr catemgr = new CategoryMgr(); 
    
    Category cate = new Category();
    cate.setCategoryID(categoryID);
    cate.setCode1(code1);
    cate.setCode2(code2);
    cate.setCategoryName(name);
    cate.setCategorySubject(subject);
    cate.setCategoryUse(use);
    
	if(catemgr.setCategory(cate) == true){ %>
 		<script>
		   	alert("카테고리 수정성공");
		   	window.location.replace("/admin/design/categorymgr.jsp");
		</script>
<% }else{ %>
	   	<script>
	    	alert("카테고리 수정실패");
	     	window.location.replace("/admin/design/categorymgr.jsp");
	   	</script>
<% }
}
%>
