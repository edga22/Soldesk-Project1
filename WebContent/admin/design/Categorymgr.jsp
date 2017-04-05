<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
}
h3 {
    margin-top : 0.5em;
}
h4 {
    margin:5px 7px;
    font-size:1.45rem;
}
.result-group, .event-header{
    margin-bottom : 1.5em;
}
th {
    height:3.2em; 
}
td, th {
    text-align:center;
    font-size:1.4rem;
}
</style>
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
      <h4>전체분류 | 생성된 분류수: 9개</h4>
    </div>    
    
    <div class="table-responsive">                    
      <table class="table table-striped table-hover">
        <thead>
          <tr class="info">
            <th>분류코드</th>
            <th>분류명</th>
            <th>분류설명</th>
            <th>분류사용</th>
            <th>분류관리</th>
          </tr>
        </thead>
        <tbody>
          <tr name="trBanner">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="10"></td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="국내도서"></td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="국내에서 출판된 서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner" type="button" class="btn btn-info btn-sm" value="추가">
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="하위추가">
               <button name="delBanner" class="btn btn-info btn-sm">삭제</button>
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
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
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="1020"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="소설">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="국내 소설"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="1030"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="전공서적">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="국내 전공서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="20"></td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="외국도서"></td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="외국에서 수입된 서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm" value="하위추가">
               <input type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="2010"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="교양">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="외국 교양서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="2020"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="소설">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="국외 소설"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="2030"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="전공서적">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="외국 전공서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="30"></td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="전자책"></td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="전자책 뷰어로 보는 책"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm" value="하위추가">
               <input type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="3010"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="교양">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="전자책 교양서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="3020"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="소설">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="전자책 소설"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
          <tr name="trBanner2">
            <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="3030"></td>
            <td>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-plus" style="font-size:15px"></i></span>
                    <input class="form-control input-sm" id="inputsm" type="text" value="전공서적">
                </div>
            </td>
            <td><input class="form-control input-sm" id="inputsm" type="text" value="전자책 전공서적"></td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="추가">
               <input type="button" class="btn btn-info btn-sm disabled" value="하위추가">
               <input name="delBanner2" type="button" class="btn btn-info btn-sm" value="삭제">
               <input type="button" class="btn btn-info btn-sm" value="적용">             
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-right">      
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
            '   <td><input class="form-control input-sm text-center" id="inputsm" type="text" value="10"></td>'+
            '   <td><input class="form-control input-sm" id="inputsm" type="text" value=""></td>'+
            '   <td><input class="form-control input-sm" id="inputsm" type="text" value=""></td>'+
            '   <td><label><input type="checkbox" value="1">사용</label></td>'+
            '   <td>'+
            '           <input name="addBanner" type="button" class="btn btn-info btn-sm" value="추가">'+    
            '           <input name="addBanner2" type="button" class="btn btn-info btn-sm" value="하위추가">'+
            '           <button name="delBanner" class="btn btn-info btn-sm">삭제</button>'+
            '           <input type="button" class="btn btn-info btn-sm" value="적용">'+
            '   </td>'+
            '</tr>';
             
        var trHtml = $( "tr[name=trBanner]:last" ); //last를 사용하여 trSchool라는 명을 가진 마지막 태그 호출
         
        trHtml.after(addBannerText); //마지막 trSchool명 뒤에 붙인다.
         
    });
     
    //삭제 버튼
    $(document).on("click","button[name=delBanner]",function(){
         
        var trHtml = $(this).parent().parent();
         
        trHtml.remove(); //tr 테그 삭제
         
    });

    //하위추가 버튼
    $(document).on("click","input[name=addBanner2]",function(){

        var addSkillText =  '<tr name="trSkill" style="height:40px;">'+
            '   <td><input name="skillName" type="text" size="30" required></td>'+
            '   <td><input name="skillLevel" type="text" size="7" required></td>'+
            '   <td><input name="skillDay" type="date" required></td>'+
            '   <td><input name="skillState" type="text" size="20" required></td>'+
            '   <td><button class="btn btn-default" name="delSkill">삭제</button></td>'+
            '</tr>';
             
        var trHtml = $( "tr[name=trBanner2]:last" ); //last를 사용하여 trSkill라는 명을 가진 마지막 태그 호출
         
        trHtml.after(addSkillText); //마지막 trSkill명 뒤에 붙인다.
         
    });
     
    //하위삭제 버튼
    $(document).on("click","button[name=delSkill]",function(){
         
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