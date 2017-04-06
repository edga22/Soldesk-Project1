<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배송상태 관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
#state {
		width: 40rem;}
</style>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div class="container" id="delivery">
	<h3>배송관리</h3><br>
	<form>	
	 유저번호로 조회: <input type="text" name="memberID" placeholder="유저 번호" required>
	 <button type="submit" formaction="/manager/ordersByMemberID.jsp" class="btn btn-default">검색</button>
	</form>
	<form>	
	 주문번호로 조회: <input type="text" name="orderID" placeholder="주문 번호" required>
	 <button type="submit" formaction="/manager/ordersByOrderID.jsp" class="btn btn-default">검색</button>
	</form>	
	<a href="/manager/orderAll.jsp" class="btn btn-default">전체검색</a>
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#orderMod">수정</button>
<!-- 배송상태 편집 기능 -->
  	  <div class="modal fade" id="orderMod">
    	<div class="modal-dialog">    
         <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title">주문상태 변경하기</h4>
          </div>
         <form action="/manager/orderStateProc.jsp">
          <div class="modal-body" align="left">         
		  <ul style=" list-style:none">		 
		   <li> 주문 번호:<input type="number" name="purchaseOrderID" placeholder="주문번호" required></li>	  
		   <li> 처리 상태:<input type="number" name="progress" placeholder="1입금확인,2배송준비,3배송시작,4배송완료,5완료" required id="state"></li>	  	  
		  </ul>		
         </div>
         <div class="modal-footer">
		  <button type="submit" class="btn btn-danger">변경</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
         </div>
        </form>
      </div>      
    </div>
  </div>  
<hr style="border: solid 0.1rem;">  

</div>
</body>
</html>