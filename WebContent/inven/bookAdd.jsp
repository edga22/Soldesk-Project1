<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 추가</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
#add tr{
	height: 3.5rem;
}

#block{
	float:left;
	margin:1rem;
	padding: 1rem;
}

#counter {
  background:rgba(255,0,0,0.5);
  border-radius: 0.5em;
  padding: 0 .5em 0 .5em;
  font-size: 0.75em;
}
#imain tr{
	height:1rem;
}
#imain th{
	width: 7rem;
}
#imain td{
	width: 20rem;
}
</style>
<script>
$(function() {
    $('#content').keyup(function (e){
        var content = $(this).val();
        $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
        $('#counter').html(content.length + '/250');
    });
    $('#content').keyup();
});
</script>
</head>
<body>
<jsp:include page="/inven/invenMain_nav.jsp"/>
<div class="container">
<h4>도서 추가</h4>
	<form action="/inven/bookAddProc.jsp">
	<div>
	  <div id="block">
		<table id="add">
		  <tr>
			<th>도 서 명:</th><td><input type="text" name="bookName" placeholder="책이름" required></td>
		  </tr>
		  <tr>
			<th>카테고리:</th><td><jsp:include page="/inven/categorySelect.jsp"></jsp:include></td>
		  </tr>
		  <tr>
			<th>작 가 명:</th><td><input type="text" name="author" placeholder="작가" required></td>
	 	 </tr>
		  <tr>
			<th>출 판 사:</th><td><input type="text" name="publisher" placeholder="출판사" required></td>
	 	 </tr>
		  <tr>
			<th>출 판 일:</th><td><input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" required></td>
		  </tr>
		  <tr>
			<th>책 금 액:</th><td><input type="number" name="price" placeholder="금액" required></td>
		  </tr>
		  <tr>
			<th>이 미 지:</th><td><input type="text" name="imageID" placeholder="/img/item/책표지 주소.jpg" required></td>
		  </tr>
		  <tr>
			<th> 재     고:</th><td><input type="number" name="stock" placeholder="등록 수량" required></td>
		 </tr>		
		  <tr>
			<th>추천상태</th><td><input type="number" name="recommend" placeholder="추천상태(1:추천, 0:비추)" required></td>
		 </tr>		
		</table>         
      </div>    
	  <div id="block">
		  <h4>부 제목</h4>
		  <textarea rows="3" cols=100% name="subtitle" id="content" maxlength="250"
				style="width: 100%; resize:none;" placeholder="내용 작성" required></textarea>
   		  	<span id="counter">255</span><br><br>
		  <h4>책 내용</h4>
		  <textarea rows="8" cols=100% name="description"
				style="width: 100%; resize:none;" placeholder="내용 작성" required></textarea>
	  </div>
		 </div>
	  <button type="submit" class="btn btn-danger">추가</button>         
	  <button type="reset" class="btn btn-default">리셋</button>         
	</form>
</div>
</body>
</html>