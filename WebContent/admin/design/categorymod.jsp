<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>

<%
String id = request.getParameter("categoryID");
String code1str = request.getParameter("code1");
String code2str = request.getParameter("code2");
String name = request.getParameter("categoryName");
String subject = request.getParameter("categorySubject");
String usestr = request.getParameter("categoryUse");

if(id != null){
	
    int categoryID = Integer.parseInt(id);
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
    
    
	if(catemgr.updateCategory(cate) == true){ %>
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
			    text: "카테고리 수정성공\n <%=cate %>",
			    type: "success"
			},
			        function(){
			    window.location.replace("/admin/design/categorymgr.jsp");
			    
			});		   	
		</script>
<% }else{ %>
	   	<script>
		   	swal({
	            title: "실패",
	            text: "카테고리 수정실패",
                type: "error"
            },
                    function(){
                window.location.replace("/admin/design/categorymgr.jsp");
                
            });
	   	</script>
<% }
}
%>
</body>
</html>
