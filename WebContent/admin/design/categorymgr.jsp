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
int categoriesSize = categories.size();
int categoriesCode1Size = categoriesusecode1.size();
int categoriesCode2Size = categoriesusecode2.size();
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
    
    <div class="table-responsive">                    
      <table class="table table-striped table-hover">
        <thead>
          <tr class="info" name="trBanner2">
            <th>분류코드</th>
            <th>분류명</th>
            <th>분류설명</th>
            <th>분류사용</th>
            <th>분류관리</th>
          </tr>
        </thead>
        <tbody>
	        <%
		    int code;	        
		    for(Category result:mymgr.listCategories()){
		    	int categoryUse = result.getCategoryUse();
		        if(result.getCode2() == 0){
		            code = result.getCode1();  
		        }else{
		            code = ((result.getCode1()*100)+result.getCode2());
		        }
		    %>
          <tr>
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="<%= code %>"></td>
            <% if(result.getCode2() == 0){ %>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="<%=result.getCategoryName() %>"></td>
            <% }else{ %>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="<%=result.getCategoryName() %>">
                </div>
            </td>
            <% } %>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="<%=result.getCategorySubject() %>"></td>
            <td><label><input type="checkbox" value="<%=categoryUse %>" <% if(categoryUse == 1){ %>checked<% } %>>사용</label></td>
            <td>
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="하위추가">
               <button name="delBanner" class="btn btn-info btn-sm">삭제</button>
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <% } %>
 <!--          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="1010"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="교양">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="국내 교양서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr> -->
        </tbody>
      </table>
    </div>
    
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-right">
              <input name="addBanner" type="button" class="btn btn-primary" value="분류추가" data-toggle="tooltip" title="분류1을 추가합니다.">
              <input type="submit" class="btn btn-primary" value="일괄적용" data-toggle="tooltip" title="분류 수정내용을 전체저장">
            </div>
        </div>
    </div>
 </div>
 <!-- main container -->

<script>
   //추가 버튼
    $(document).on("click","input[name=addBanner]",function(){
        var addBannerText =  '<tr name="trBanner">'+
            '   <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="" placeholder="두자리숫자입력"></td>'+
            '   <td><input class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류1 이름입력"></td>'+
            '   <td><input class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류1 설명입력"></td>'+
            '   <td><label><input type="checkbox" value="1">사용</label></td>'+
            '   <td>'+
            '           <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="하위추가">'+
            '           <button name="delBanner" class="btn btn-info btn-sm">삭제</button>'+
            '           <input type="button" class="btn btn-info btn-sm" value="적용">'+
            '   </td>'+
            '</tr>';
             
        var trHtml = $( "tr[name=trBanner2]:last" ); //last를 사용하여 trSchool라는 명을 가진 마지막 태그 호출
         
        trHtml.after(addBannerText); //마지막 trSchool명 뒤에 붙인다.         
    });
     
    //삭제 버튼
    $(document).on("click","button[name=delBanner]",function(){
    	
        var trHtml = $(this).parent().parent();
        
        trHtml.remove(); //tr 테그 삭제         
    });

    //하위추가 버튼
    $(document).on("click","input[name=addBanner2]",function(){

        var addBannerText2 =  '<tr name="trBanner2">'+
            '   <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="" placeholder="4자리숫자입력"></td>'+
            '   <td>'+
            '   <div class="input-group">'+
            '       <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>'+
            '       <input class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류2 이름입력">'+
            '   </div>'+
            '   </td>'+
            '   <td><input class="form-control input-sm" id="inputsm" type="text" value="" placeholder="분류2 설명입력"></td>'+
            '   <td><label><input type="checkbox" value="1">사용</label></td>'+
            '   <td>'+
            '      <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">'+
            '      <button name="delBanner2" class="btn btn-info btn-sm">삭제</button>'+
            '      <input type="button" class="btn btn-info btn-sm" value="적용">'+
            '   </td>'+
            '</tr>';
             
        var trHtml = $( "tr[name=trBanner2]:last" ); //last를 사용하여 trSkill라는 명을 가진 마지막 태그 호출
         
        trHtml.after(addBannerText2); //마지막 trSkill명 뒤에 붙인다.
         
    });
     
    //하위삭제 버튼
    $(document).on("click","button[name=delBanner2]",function(){
         
        var trHtml = $(this).parent().parent();
         
        trHtml.remove(); //tr 테그 삭제
         
    });    
</script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>

</body>
</html>