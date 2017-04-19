<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%@ page import="java.util.List" %>
<%
CategoryMgr mymgr = new CategoryMgr();
List<Category> categories = mymgr.listCategories();
List<Category> categoriescode1 = mymgr.listCategoriesCode1();
pageContext.setAttribute("categoriescode1", categoriescode1);
int categoriesSize = categories.size();
int categoriesCode1Size = categoriescode1.size();
int categoriesCode2Size = categoriesSize-categoriescode1.size();
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
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
<title>분류 관리</title>
<style>
body {
    border-radius: 0px;
    margin-bottom: 5rem;
}
h3 {
    margin-top : 0.5rem;
}
h4 {
    margin:5px 7px;
}
h4 span{    
    font-size:1.7rem;
    padding:0.5rem 2rem;
}
h4 .cate1{
    font-size:1.3rem;
    margin-left:1.5rem;
}

th {
    height:3.5rem;
}
td, th {
    text-align:center;
    font-size:1.4rem;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container"> <!-- main container -->
    <div class="row">
        <div class="col-sm-12">
            <div class="event event-header">
                <h3>분류 관리</h3>
            </div>
        </div>
    </div>
    
    <div class="well well-sm">    
      <h4><span class="label label-primary cate1">전체분류</span>
          <span class="badge"><%= categoriesSize %>개</span> 
          <span class="label label-info cate1">분류1</span>
          <span class="badge"><%= categoriesCode1Size %>개 </span>
          <span class="label label-info cate1">분류2</span>
          <span class="badge"><%= categoriesCode2Size %>개</span></h4>
    </div>    
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-right">
              <input name="addBanner" type="button" class="btn btn-primary" value="분류추가" data-toggle="tooltip" title="분류1을 추가합니다.">
              <input name="addBanner2" type="button" class="btn btn-primary" value="하위분류추가" data-toggle="tooltip" title="분류2을 추가합니다.">
              <!-- <input type="submit" class="btn btn-primary" value="일괄적용" data-toggle="tooltip" title="분류 수정내용을 전체저장"> -->
            </div>
        </div>
    </div>
    <div class="table-responsive">      
      <form action="/admin/design/categoryadd.jsp" method="post">
      <table class="table table-striped table-hover" id="categoryAddBanner" style="display:none">
        <thead>
          <tr class="warning">
            <th colspan="7" class="text-center" id="categoryAddInfo" style="display:none">            	
            	<a class="close" id="addInfoClose">&times;</a>
                <p>분류코드는 직접 입력한 값을 사용하고 하위분류코드의 분류코드1은 셀렉트 박스를 선택합니다.</p>                
                <h5>분류코드는 0~9까지 입력이 가능하며 2자리씩 4자리를 사용하여 2단계를 표현합니다.</h5> 
                <span style="color:red;font-size:1.5rem">분류코드는 나중에 수정/삭제이 되지 않으므로 신중하게 결정하여 사용하십시오.</span>
            </th>
          </tr>
          <tr class="info" name="trBanner">
            <th style="width:10%">ID</th>
            <th colspan="2" style="width:20%">분류코드</th>
            <th style="width:25%">분류명</th>
            <th style="width:30%">분류설명</th>
            <th style="width:5%">사용</th>
            <th style="width:10%">분류관리</th>
          </tr>
      </thead>
      </table>
      </form>
      
      <table class="table table-striped table-hover">
        <thead>
          <tr class="info">
            <th style="width:10%">ID</th>
            <th colspan="2" style="width:20%">분류코드</th>
            <th style="width:25%">분류명</th>
            <th style="width:30%">분류설명</th>
            <th style="width:5%">사용</th>
            <th style="width:10%">분류관리</th>
          </tr>
        </thead>        
        <tbody>          
	        <%
		    int code;	        
		    for(Category result:mymgr.listCategories()){
		    	int categoryUse = result.getCategoryUse();
		        if(result.getCode2() == 0) code = result.getCode1();  
		        else code = ((result.getCode1()*100)+result.getCode2());
		    %>
		  <form action="/admin/design/categorymod.jsp" method="get">	  
          <tr>
            
            <td><input name="categoryID" type="hidden" value="<%= result.getCategoryID() %>"><%= result.getCategoryID() %></td>
            <td colspan="2">
                <input name="code1" type="hidden" value="<%= result.getCode1() %>">
                <input name="code2" type="hidden" value="<%= result.getCode2() %>">
                <input class="form-control input-sm text-center" id="inputsm" type="text" value="<%= code %>" readonly="readonly">
            </td>
            <td>
            <% if(result.getCode2() == 0){ %>
                <input name="categoryName" class="form-control input-sm" id="inputsm" type="text" value="<%=result.getCategoryName() %>">
            <% }else{ %>            
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input name="categoryName" class="form-control input-sm" id="inputsm" type="text" value="<%=result.getCategoryName() %>">
                </div>            
            <% } %>
            </td>
            <td><input name="categorySubject" class="form-control input-sm" id="inputsm" type="text" value="<%=result.getCategorySubject() %>"></td>
            <td><label><input name="categoryUse" type="checkbox" value="<%=categoryUse %>" <% if(categoryUse == 1){ %>checked<% } %>>사용</label></td>
            <td>
               <input type="submit" class="btn btn-info btn-sm" value="적용">          
            </td>            
          </tr>
          </form>        
          <% } %>
        </tbody>        
      </table>      
    </div>
    
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-right">
              <input name="addBanner" type="button" class="btn btn-primary" value="분류추가" data-toggle="tooltip" title="분류1을 추가합니다.">
              <input name="addBanner2" type="button" class="btn btn-primary" value="하위분류추가" data-toggle="tooltip" title="분류2을 추가합니다.">
              <!-- <input type="submit" class="btn btn-primary" value="일괄적용" data-toggle="tooltip" title="분류 수정내용을 전체저장"> -->
            </div>
        </div>
    </div>
 </div>
 
 <!-- main container -->

<script>
   //추가 버튼
    $(document).on("click","input[name=addBanner]",function(){
    	
    	$("#categoryAddBanner").show();
        
    	var addBannerText =  '<tr name="trBanner2">'+
            '   <td colspan="3"><input name="code1" class="form-control input-sm text-center" id="inputsm" type="text" value="" placeholder="두자리 숫자입력" required></td>'+
            '   <td><input name="categoryName" class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류1 이름입력" required></td>'+
            '   <td><input name="categorySubject" class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류1 설명입력" required></td>'+
            '   <td><label><input name="categoryUse" type="checkbox" value="1" checked>사용</label></td>'+
            '   <td>'+
            '       <button name="delBanner" class="btn btn-info btn-sm">삭제</button>'+
            '       <input type="submit" class="btn btn-info btn-sm" value="적용">'+
            '   </td>'+
            '</tr>';
             
        var trHtml = $( "tr[name=trBanner]:last" ); //last를 사용하여 trSchool라는 명을 가진 마지막 태그 호출         
        trHtml.after(addBannerText); //마지막 trSchool명 뒤에 붙인다.
        $("#categoryAddInfo").show(); //베너추가 주의사항
    });
     
    //삭제 버튼
    $(document).on("click","button[name=delBanner]",function(){    	
        var trHtml = $(this).parent().parent();        
        trHtml.remove(); //tr 테그 삭제
        if($("tr[name=trBanner2]").length == 0) $("#categoryAddBanner").hide();        
    });

    //하위추가 버튼
    $(document).on("click","input[name=addBanner2]",function(){
    	
    	$("#categoryAddBanner").show();
        
    	var addBannerText2 =  '<tr name="trBanner2">'+            
            '   <td colspan="2">'+
	        '      <select class="form-control input-sm" name="code1">'+
		    '         <option value="default" required>-1차분류-</option>'+
		    '         <c:forEach var="category" items="${categoriescode1}">'+
		    '         <option value="${category.code1}">${category.categoryName}</option>'+
		    '         </c:forEach>'+
	        '      </select>'+
            '   </td>'+
            '   <td><input name="code2" class="form-control input-sm text-center" id="inputsm" type="text" value="" placeholder="2자리숫자입력" required></td>'+
            '   <td>'+
            '   <div class="input-group">'+
            '       <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>'+
            '       <input name="categoryName" class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류2 이름입력" required>'+
            '   </div>'+
            '   </td>'+
            '   <td><input name="categorySubject" class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류2 설명입력" required></td>'+
            '   <td><label><input name="categoryUse" type="checkbox" value="1" checked>사용</label></td>'+
            '   <td>'+
            '      <button name="delBanner2" class="btn btn-info btn-sm">삭제</button>'+
            '      <input type="submit" class="btn btn-info btn-sm" value="적용">'+
            '   </td>'+
            '</tr>';
             
        var trHtml = $( "tr[name=trBanner]:last" ); //last를 사용하여 trSkill라는 명을 가진 마지막 태그 호출         
        trHtml.after(addBannerText2); //마지막 trSkill명 뒤에 붙인다.  
        $("#categoryAddInfo").show(); //베너추가 주의사항
    });
     
    //하위삭제 버튼
    $(document).on("click","button[name=delBanner2]",function(){         
        var trHtml = $(this).parent().parent();         
        var trBanner = $("tr[name=trBanner]");
        trHtml.remove(); //tr 테그 삭제
        if($("tr[name=trBanner2]").length == 0) $("#categoryAddBanner").hide();
    });    
</script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 

	$("#addInfoClose").click(function(){
		$("#categoryAddInfo").hide();
	});	
});
</script>

</body>
</html>