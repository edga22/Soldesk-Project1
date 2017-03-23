<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>장바구니</title>
</head>
<body>
<div class="container"> <!-- 시작 -->
<!-- 장바구니 패널 -->
<div class="panel panel-default"> 
  <div class="panel-heading"><h2>장바구니</h2></div>
  <div class="panel-body">회원가입을 하시면 통합포인트 적립, 쿠폰사용을 통한 추가할인, 추가적립 등 다양한 혜택이 가득합니다.</div>
</div> <!-- 장바구니 패널 -->

<div class="row">
<div> <!-- 전체선택과 버튼들 -->
	<form class="form-horizontal">
     	<input type="button" class="btn btn-default" value="선택한 상품 삭제"/>
	</form>
</div> <!-- 전체선택과 버튼들 -->
</div>

<!-- table -->
<h2>목록</h2>
<table class="table table-hover">
    <thead>
      <tr>
      	<th></th>
        <th class="col-sm-3">상품명</th>
        <th class="col-sm-2">가격</th>
        <th class="col-sm-1">수량</th>
        <th class="col-sm-1">합계</th>
        <th class="col-sm-3">도착예정일</th>
        <th class="col-sm-2">선택</th>
      </tr>
    </thead>
    <tbody>
      <tr> 
      	<td><input type="checkbox" name="#"/></td>
        <td><img src="img/book/buket1.PNG"/>
        	[국내도서] 책 제목
        </td>
        <td><p><s>정가</s></p> <p>판매가[10%↓]</p> <p>포인트P</p>
        </td>
        <td>
        <form action="#">
          <input type="number" name="#"/>
       	  <input type="button" class="btn btn-default btn-block" value="변경"/>
       	</form>
        </td>
        <td><strong>합계</strong></td>
        <td>도착예정일(0일,0요일)</td>
        <td>
        <form action="Payment.jsp">
    		<input type="submit" class="btn btn-default btn-block" value="바로주문"/>
		</form>
		<button type="button" class="btn btn-default btn-block">삭제</button></td>
        </td>
      </tr>
      <tr>
      	<td><input type="checkbox" name="#"/></td>
        <td><img src="img/book/buket1.PNG"/>
        	[국내도서] 책 제목
        </td>
        <td><p><s>정가</s></p> <p>판매가[10%↓]</p> <p>포인트P</p>
        </td>
        <td>
        <form action="#">
          <input type="number" name="#"/>
       	  <input type="button" class="btn btn-default btn-block" value="변경"/>
       	</form>
        </td>
        <td><strong>합계</strong></td>
        <td>도착예정일(0일,0요일)</td>
        <td>
        <form action="Payment.jsp">
    		<input type="submit" class="btn btn-default btn-block" value="바로주문"/>
		</form>
        <button type="button" class="btn btn-default btn-block">삭제</button></td>
     </tr>
    </tbody>
</table> <!-- 테이블 -->

<div class="row">
<div> <!-- 전체선택과 버튼들 -->
	<form class="form-horizontal">
     	<input type="button" class="btn btn-default" value="선택한 상품 삭제"/>
	</form>
</div> <!-- 전체선택과 버튼들 -->
</div>

<!-- 가격 테이블 -->
<h2>가격</h2>
<table class="table">
    <thead>
      <tr>
        <th>상품금액 / 0종(0개)</th>
        <th>배송비</th>
        <th>결제 예정금액</th>
        <th>적립예정</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>9,999원</td>
        <td>0원</td>
        <td>9,999원</td>
        <td>10p</td>
      </tr>
    </tbody>
</table> <!-- 가격 테이블 -->

<!-- 주문 및 되돌아가기 -->
<div class="row">
	<div class="col-sm-7"></div>
	<form action="../main.html">
	<div class="col-sm-2"> 
    	<input type="submit" class="btn btn-default" value="쇼핑 계속하기"/>
    </div>
    </form>
    
    <form action="Payment.jsp">
	<div class="col-sm-2"> 
    	<input type="submit" class="btn btn-default" value="주문하기"/>
	</div>
	</form>
</div> <!-- 주문 및 되돌아가기 -->
</div> <!-- 끝 -->
</body>
</html>