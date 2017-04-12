<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
         
<title>반품/교환 신청서</title>
</head>
<body>
<div class="container">
<h2>반품/교환/회수</h2>
<input type="radio" name="product" checked>반품
<input type="radio" name="product">교환
 <p>반품: 상품이 맘에들지않거나 잘못구입한 경우</p>
 <p>교환: 상품불량(파손/훼손), 주문과 다른 상품 수령</p>

<h2>반송예정상품 선택</h2><input type="button" class="btn btn-primary" value="주문번호찾기">
 <p>반품/교환/회수 등 조치가 필요한 상품과 수량을 체크해주세요.</p>
          
 <% 
 int temp=1;
 for(int i=0;i<temp; i++){
 %>
   
 <table class="table table-hover">
 	<tr>
 		<th>주문번호</th>
 		<th>반송상품 선택</th>
 		<th>반송수량/총수량</th>
 	</tr>
 	
 	<tr>
 		<td><%= "1234-12123"%></td>
 		<td><%= "java의정석"%></td>
 		<td><%= "1/2"%></td> 	
 	</tr>
 </table>

<%
 }
%>
<h2>회송방법 선택</h2>
<input type="radio" name="product" >고객임의발송
<input type="radio" name="product">본사방문반품

<h2>회원정보 입력</h2>
<p>선택하신 주문의 원배송지 정보입니다. 원하시는 회수 혹은 교환받으실 주소 변경 가능합니다.</p>
<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->

우편번호:<input type="text" name="" class="postcodify_postcode5" value="" />
<button id="postcodify_search_button" class="btn btn-primary">검색</button><br />
도로명주소:<input type="text" name="" class="postcodify_address" value="" /><br />
상세주소:<input type="text" name="" class="postcodify_details" value="" /><br />


<!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

<a href="/mypage/MypageorderMod.jsp"><input type="submit" class="btn btn-primary"value="신청완료"/></a>
</div>
</body>
</html>