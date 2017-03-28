<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>재고관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
 
<div class="container" id="manager">

	<h3> 재고관리 페이지 입니다.</h3>
	<form action="BookList.jsp" target="content">	
	 <input type="text" placeholder="도서 제목">
	 <input type="submit" class="btn btn-default" value="검색">
	</form>	
	<a href="BookListAll.jsp" class="btn btn-default" target="content">전체검색</a>
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#listAdd">추가</button>
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#listMod">수정</button>
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#listDel">삭제</button> 
<!-- 도서 추가기능 -->
  	  <div class="modal fade" id="listAdd">
    	<div class="modal-dialog">    
         <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title">도서 추가</h4>
          </div>
         <form action="BookAdd.jsp" target="content">
          <div class="modal-body" align="right">         
		  <ul style=" list-style:none">		 
		   <li> 제  목:<input type="text" name="bookName" placeholder="도서 제목"></li>
		   <li> 출판사:<input type="text" name="publish" placeholder="출판사"></li>
		   <li> 저  자:<input type="text" name="author" placeholder="저 자"></li>
		   <li> 금  액:<input type="text" name="bookPrice" placeholder="금액(숫자만 입력)"></li>		  
		  </ul>		
         </div>
         <div class="modal-footer">
		  <button type="submit" class="btn btn-primary">추가</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
         </div>
        </form>
      </div>      
    </div>
  </div>
<!-- 도서 수정 -->
  	  <div class="modal fade" id="listMod">
    	<div class="modal-dialog">    
         <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title">도서 수정</h4>
          </div>
         <form action="BookMod.jsp" target="content">
          <div class="modal-body" align="right">         
		  <ul style=" list-style:none" >		 
		   <li> 제  목:<input type="text" name="bookName" placeholder="도서 제목"></li>
		   <li> 출판사:<input type="text" name="publish" placeholder="출판사"></li>
		   <li> 저  자:<input type="text" name="author" placeholder="저 자"></li>
		   <li> 금  액:<input type="text" name="bookPrice" placeholder="금액(숫자만 입력)"></li>		  
		  </ul>		
         </div>
         <div class="modal-footer">
		  <button type="submit" class="btn btn-primary">수정</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
         </div>
        </form>
      </div>      
    </div>
  </div>
<!-- 도서 삭제 -->
  	  <div class="modal fade" id="listDel">
    	<div class="modal-dialog">    
         <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title">도서 삭제</h4>
          </div>
         <form action="BookDel.jsp" target="content">
          <div class="modal-body" align="right">         
		  <ul style=" list-style:none" >		 
		   <li> 제  목:<input type="text" name="bookName" placeholder="도서 제목"></li>		  
		  </ul>		
         </div>
         <div class="modal-footer">
		  <button type="submit" class="btn btn-primary">삭제</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
         </div>
        </form>
      </div>      
    </div>
    </div><!-- 삭제 모달 종료 -->    
<hr style="border: solid 0.1rem;">
<!-- 결과값 보여주는창 contents -->
	<iframe name="content" style="width:100%; border:none;"></iframe>      
</div>

</body>
</html>