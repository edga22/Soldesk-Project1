<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container" id="delivery">
	<h3>배송관리</h3><br>
	<form action="/manager/orderByMemberID.jsp">	
	 <input type="text" name="memberID" placeholder="유저 번호" required>
	 <input type="submit" class="btn btn-default" value="검색">
	</form>	
	<form action="/manager/orderByOrderID.jsp">	
	 <input type="text" name="orderID" placeholder="주문 번호" required>
	 <input type="submit" class="btn btn-default" value="검색">
	</form>	
	<a href="bookListAll.jsp" class="btn btn-default">전체검색</a>
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
         <form action="bookAdd.jsp">
          <div class="modal-body" align="right">         
		  <ul style=" list-style:none">		 
		   <li> 도 서 명:<input type="text" name="bookName" placeholder="책이름" required></li>		  
		   <li> 작 가 명:<input type="text" name="author" placeholder="작가" required></li>		  
		   <li> 출 판 사:<input type="text" name="publisher" placeholder="출판사" required></li>		  
		   <li> 출 판 일:<input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" required></li>		  
		   <li> 책 금 액:<input type="number" name="price" placeholder="금액" required></li>		  
		   <li> 이 미 지:<input type="text" name="imageID" placeholder="책표지 주소(.jpg)" required></li>		  
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
         <form action="bookMod.jsp">
          <div class="modal-body" align="right">         
		  <ul style=" list-style:none">		 
		   <li> 도 서 명:<input type="number" name="bookID" placeholder="도서번호" required></li>		  
		   <li> <hr style="border: solid 0.1rem;"> </li>		  
		   <li> 도 서 명:<input type="text" name="bookName" placeholder="책이름" ></li>		  
		   <li> 작 가 명:<input type="text" name="author" placeholder="작가" ></li>		  
		   <li> 출 판 사:<input type="text" name="publisher" placeholder="출판사" ></li>		  
		   <li> 출 판 일:<input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" ></li>		  
		   <li> 책 금 액:<input type="number" name="price" placeholder="금액" ></li>		  
		   <li> 이 미 지:<input type="text" name="imageID" placeholder="책표지 주소(.jpg)" ></li>		  
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
         <form action="bookDel.jsp">
          <div class="modal-body" align="right">         
		  <ul style=" list-style:none" >		 
		   <li> 도서 번호:<input type="number" name="bookID" placeholder="도서 번호" required></li>		  
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






</div>
</body>
</html>