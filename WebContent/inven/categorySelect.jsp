<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%@ page import="java.util.List" %>
<%
CategoryMgr mymgr = new CategoryMgr();
List<Category> categories = mymgr.listCategories();
pageContext.setAttribute("categories", categories);
int categoriesSize = categories.size();
%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
   $(function() {
   $('#sel1').change(function() {
	   var temp = $('#sel2');
	   var a = $(this).val();
	   temp.children().remove();
	   temp.append('<option value="">--2차분류--</option>');

<%
int i =0;
for(Category result:mymgr.listCategories()){
	
	if(result.getCode2() == 0){
		if(i == 0){
%>
	   if(a == '<%=result.getCode1() %>'){
     <% }else{ %>
       }
	   
       if(a == '<%=result.getCode1() %>'){
     <% }
	}else{ 
		   if(result.getCategoryUse() == 1){
	%>
	    temp.append('<option value="<%=result.getCategoryID()%>"><%=result.getCategoryName() %></option>');
   <% 
		   }else{
    %>
		temp.append('<option value="<%=result.getCategoryID()%>" class="usecategory"><%=result.getCategoryName() %></option>');
	<%
		   }
      }
   i++;
}
   %>
	   }
   });
   /* $('#sel2').change(function() {
          console.log($('#sel2').val());           
   }); */
});
</script>

<style>
.usecategory {
    color:red;
}
</style>

<div>
	<select id="sel1">
		<option value="">-1차분류-</option>           
           <c:forEach var="category" items="${categories}">
            <c:if test="${category.code2 == 0}">
               <c:if test="${category.categoryUse != 1}">
               <option value="${category.code1}" class="usecategory">${category.categoryName}</option>
               </c:if>
               <c:if test="${category.categoryUse == 1}">
                <option value="${category.code1}">${category.categoryName}</option>
               </c:if>
            </c:if>
           </c:forEach>
	</select>
	<select id="sel2" name=categoryID>
	    <option>--2차분류--</option>
	</select>		
</div>