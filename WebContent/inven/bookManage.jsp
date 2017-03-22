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

<div class="container">

	<h3> 재고관리 페이지 입니다.</h3>	
	<input type="text" placeholder="도서 제목">
	<a href="#" class="btn btn-default">검색</a>
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#listAdd">추가</button>
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#listMod">수정</button>
	<button type="button" class="btn btn-default">삭제</button> 
<!-- 도서 추가기능 -->
  	  <div class="modal fade" id="listAdd">
    	<div class="modal-dialog">    
         <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title">도서 추가</h4>
          </div>
         <div class="modal-body">
          <table class="table table-condensed">
		   <thead>
			<tr>
				<th>책 제목</th>
				<th>출판사</th>
				<th>저 자</th>
				<th>금 액(원)</th>
			</tr>
		  </thead>
		  <tbody>
			<tr>
				<td>자존감 수업</td>
				<td>미디어북스</td>
				<td>윤홍균</td>
				<td>12,600</td>
			</tr>
		 </table>
		 <ul style=" list-style:none" align="right">
		  <li> 제  목:<input type="text" name="bookName" placeholder="도서 제목"></li>
		  <li> 출판사:<input type="text" name="publish" placeholder="출판사"></li>
		  <li> 저  자:<input type="text" name="author" placeholder="저 자"></li>
		  <li> 금  액:<input type="text" name="bookPrice" placeholder="금액(숫자만 입력)"></li>
		 </ul>
        </div>
        <div class="modal-footer">
		  <button type="button" class="btn btn-primary">추가</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
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
         <div class="modal-body">
          <table class="table table-condensed">
		   <thead>
			<tr>
				<th>책 제목</th>
				<th>출판사</th>
				<th>저 자</th>
				<th>금 액(원)</th>
			</tr>
		  </thead>
		  <tbody>
			<tr>
				<td>자존감 수업</td>
				<td>미디어북스</td>
				<td>윤홍균</td>
				<td>12,600</td>
			</tr>
		 </table>
		 <ul style=" list-style:none" align="right">
		  <li> 제  목:<input type="text" name="bookName" placeholder="도서 제목"></li>
		  <li> 출판사:<input type="text" name="publish" placeholder="출판사"></li>
		  <li> 저  자:<input type="text" name="author" placeholder="저 자"></li>
		  <li> 금  액:<input type="text" name="bookPrice" placeholder="금액(숫자만 입력)"></li>
		 </ul>
        </div>
        <div class="modal-footer">
		  <button type="button" class="btn btn-primary">변경</button>         
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>      
    </div>
  </div><hr style="border: solid 0.1rem;">
<!-- 책 검색 내용창 -->
  <h3>검색 결과</h3>
	<table class="table table-condensed">
	<thead>
	 <tr>
	    <th>책 제목</th>
		<th>출판사</th>
		<th>저 자</th>
		<th>금 액(원)</th>
	 </tr>
	</thead>
	<tbody>
	 <tr>
		<td>자존감 수업</td>
		<td>미디어북스</td>
		<td>윤홍균</td>
		<td>12,600</td>
	 </tr>
	 <tr>
		<td>언어의 온도</td>
		<td>심플라이프</td>
		<td>이기주</td>
		<td>12,420</td>
	 </tr>
	 <tr>
		<td>조선왕조실록</td>
		<td>세계사</td>
		<td>설민석</td>
		<td>19,800</td>
	 </tr>
	 <tr>
		<td>너의이름은</td>
		<td>대원이엔씨</td>
		<td>신카이 마코토</td>
		<td>9,900</td>
	 </tr>
	</tbody>	
	</table>      

</div>

</body>
</html>