<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%@ page import="java.util.List" %>
<%
CategoryMgr mymgr = new CategoryMgr();
List<Category> categories = mymgr.listCategories();
List<Category> categoriesusecode1 = mymgr.listCategoriesUseCode1();
List<Category> categoriesusecode2 = mymgr.listCategoriesUseCode2();
pageContext.setAttribute("categoriesusecode1", categoriesusecode1);
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>카테고리 테스트</title>
<script type="text/javascript">
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    alert(val);
    removeAll(targetE);
    
    <%
    int i=0;
    for(Category result1:mymgr.listCategoriesUseCode1()){	    
        if(i == 0){
    %>
    if(val == '<%=result1.getCode1() %>'){
    <%
	    }else{
	%>
	}else if(val == '<%=result1.getCode1() %>'){
	<%
	    }
        for(Category result2:mymgr.listCategoriesUseCode2()){
        	if(result2.getCode1()==result1.getCode1()){
    %>
    addOption('<%=result2.getCategoryName() %>', targetE); 
    <%
        	}
        }	
        i++;
	}
    %>
    }
}

function addOption(value, e){
    var o = new Option(value);
    try{
        e.add(o);
    }catch(ee){
        e.add(o, null);
    }
}

function removeAll(e){
    for(var i = 0, limit = e.options.length; i < limit - 1; ++i){
        e.remove(1);
    }
}
</script>
</head>
<body>
<div class="row">
<div class="col-md-6 col-md-offset-3">
<%-- <%
Category cate = new Category();
cate.setCategoryName("테스트2");
cate.setCategorySubject("테스트2");
cate.setCategoryUse(1);
cate.setCode1(50);
cate.setCode2(10);

CategoryMgr mymgr = new CategoryMgr();
if(mymgr.addCategory(cate) == true){%>
<script>
alert("카테고리 생성성공");
</script>
<%}else{ %>
<script>
alert("카테고리 생성실패");
</script>
<%} %> --%>
<table class="table table-striped">
<thead>
<tr>
	<th>ID</th>
	<th>code</th>
	<th>이름</th>
	<th>설명</th>
	<th>사용</th>
</tr>
</thead>
<tbody>
	<%
	int code;
	for(Category result:mymgr.listCategories()){ 
		if(result.getCode2() == 0){
            code = (result.getCode1() * 100);  
        }else{
            code = ((result.getCode1()*100)+result.getCode2());
        }
	%>
	<tr>
		<td><%=result.getCategoryID() %> </td>
		<td><%= code %></td>
		<td><%=result.getCategoryName() %></td>
		<td><%=result.getCategorySubject() %></td>
		<td><%=result.getCategoryUse() %></td>
	</tr>
	<% } %>
</tbody>
</table>
</div>
</div>
<div class="row">
    <div class="col-md-1 col-md-offset-3">
        <div class="form-group">
	    <form action="#">
		  <select class="form-control input-sm" name="selOne" id="selOne" onchange="doChange(this, 'selTwo')">
		    <option value="default">-1차분류-</option>			  
		    <c:forEach var="categoryuse" items="${categoriesusecode1}">
		    <option value="${categoryuse.code1}">${categoryuse.categoryName}</option>
		    </c:forEach>
           </select>
         </div>
    </div>
    <div class="col-md-1">
        <div class="form-group">       
           <select class="form-control input-sm" name="selTwo" id="selTwo">
            <option value="default">-2차분류-</option>
           </select>
        </form>
        </div>
    </div>
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>