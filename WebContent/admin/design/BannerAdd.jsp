<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>베너 추가</title>
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
	            <h3>베너 추가</h3>
	        </div>
	    </div>
    </div>
    
    <div class="well well-sm">	  
	  <h4>베너 추가 | 베너번호: 6 (스와이프뷰)</h4>
	</div>    
    
	<div class="table-responsive">	                  
	  <table class="table table-striped table-hover">
	    <thead>
	      <tr class="info">
	        <th>번호</th>
	        <th>베너명</th>
	        <th>베너설명</th>
	        <th>베너타입</th>
	        <th>베너사용</th>
	        <th>베너관리</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>1</td>
	        <td>main_swiperview</td>
	        <td>메인 슬라이드입니다.</td>
	        <td>스와이프 뷰</td>
	        <td><label><input type="checkbox" value="1">사용</label></td>
	        <td>	           
               <input type="button" class="btn btn-info btn-xs" value="추가">
               <input type="button" class="btn btn-info btn-xs" value="삭제">
               <input type="button" class="btn btn-info btn-xs" value="적용">	           
	        </td>	           
	      </tr>
	      <tr>
	        <td>2</td>
	        <td>main_top_ad</td>
	        <td>메인 상단 광고 입니다.</td>
	        <td>롤링이미지</td>
	        <td><label><input type="checkbox" value="1">사용</label></td>
	        <td>              
               <input type="button" class="btn btn-info btn-xs" value="추가">
               <input type="button" class="btn btn-info btn-xs" value="삭제">
               <input type="button" class="btn btn-info btn-xs" value="적용">             
            </td>
	      </tr>
	      <tr>
	        <td>3</td>
	        <td>main_side_ad</td>
	        <td>메인 사이드 광고 입니다.</td>
	        <td>이미지</td>
	        <td><label><input type="checkbox" value="1">사용</label></td>
	        <td>              
               <input type="button" class="btn btn-info btn-xs" value="추가">
               <input type="button" class="btn btn-info btn-xs" value="삭제">
               <input type="button" class="btn btn-info btn-xs" value="적용">             
            </td>
	      </tr>
	      <tr>
            <td>4</td>
            <td>cate_1</td>
            <td>분류1번 메인 이미지 입니다.</td>
            <td>이미지</td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input type="button" class="btn btn-info btn-xs" value="추가">
               <input type="button" class="btn btn-info btn-xs" value="삭제">
               <input type="button" class="btn btn-info btn-xs" value="적용">             
            </td>
          </tr>
          <tr>
            <td>5</td>
            <td>new_1</td>
            <td>신간 메인 이미지 입니다.</td>
            <td>이미지</td>
            <td><label><input type="checkbox" value="1">사용</label></td>
            <td>               
               <input type="button" class="btn btn-info btn-xs" value="추가">
               <input type="button" class="btn btn-info btn-xs" value="삭제">
               <input type="button" class="btn btn-info btn-xs" value="적용">             
            </td>
          </tr>
	    </tbody>
	  </table>
	</div>
	
	<div class="row">
        <div class="col-sm-12">
            <div class="pull-right">	  
			  <input type="submit" class="btn btn-primary" value="적용" data-toggle="tooltip" title="베너 수정내용 저장">
			  <a href="/admin/design/Bannermgr.jsp" class="btn btn-primary" role="button" data-toggle="tooltip" title="베너목록으로 이동">목록</a>
		    </div>
		</div>
	</div>
 </div>
 <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
 <!-- main container -->


</body>
</html>