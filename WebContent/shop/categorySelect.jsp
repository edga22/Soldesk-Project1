<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
int categoriesSize = categories.size();
int categoriesCode1Size = categoriesusecode1.size();
int categoriesCode2Size = categoriesusecode2.size();
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <form action="#">
    <div class="col-md-1 col-md-offset-3">
        <div class="form-group">        
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
        </div>
    </div>
    </form>
</div>
</body>
</html>