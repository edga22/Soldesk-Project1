<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>책 전체 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
#it th {
text-align:center;
}
</style>
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
%>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<div class="container" id="bim">
<form>
<%-- <div style="border:0.1rem solid black; margin:1rem; padding:1rem;"><!-- 도서 수정 -->		
	 	 <table id="imain">
			<tr>
				<th>도 서 명 :</th><td><input type="text" name="bookName" placeholder="책이름" ></td>
				<th>작 가 명 :</th><td><input type="text" name="author" placeholder="작가" ></td>
				<th>출 판 사 :</th><td><input type="text" name="publisher" placeholder="출판사" ></td>
			</tr>
			<tr>		
				<th>출 판 일 :</th><td><input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" ></td>
				<th>도서금액 :</th><td><input type="number" name="price" placeholder="금액" ></td>
				<th>총 재 고 :</th><td><input type="number" name="stock" placeholder="등록 수량" ></td>
			</tr>
			<tr>
				<th>이 미 지 :</th><td><input type="text" name="imageID" placeholder="책표지 주소(.jpg)" ></td>							
				<th>카테고리 :</th><td><jsp:include page="/inven/categorySelect.jsp"/></td>
				<th>추천상태</th><td><input type="number" name="recommend" placeholder="추천상태(1:추천, 0:비추천)" ></td>
			</tr>
		</table>
		<br>		
</div> --%>
		<button type="submit" formaction="/inven/bookList.jsp" class="btn btn-warning btn-sm glyphicon glyphicon-floppy-saved">수정</button>
		<button type="submit" formaction="/inven/bookDel.jsp" class="btn btn-danger btn-sm glyphicon glyphicon-trash">삭제</button>
<hr style="border: solid 0.1rem;"> 
<h3>전체 도서 검색 결과</h3>
	<table class="table table-condensed table-striped" id="it">
	 <thead>
	  <tr class="info">
		<th style="width:5rem;">도서번호</th>
		<th style="width:25rem;">도서명</th>
		<th style="width:5rem;">카테고리</th>
		<th style="width:15rem;">작가/번역</th>
		<th style="width:15rem;">출판사</th>
		<th style="width:15rem;">출판일</th>
		<th style="width:10rem;">금 액(원)</th>
		<th style="width:20rem;">책표지 주소</th>
		<th style="width:5rem;">재고</th>
		<th style="width:5rem;">상태</th>
	  </tr>
	 </thead>
	 <tbody>
<%
Book[] books = mymgr.getAllBooks();
if( books != null){
	for(Book book: books){	
%>	 	
			  <tr>
				<th><input type="radio" name="bookID" value="<%=book.getBookID()%>"><%=book.getBookID()%></th>
				<th><%=book.getBookName()%></th>
				<th><%=book.getCategoryID()%></th>
				<th><%=book.getAuthor() %></th>
				<th><%=book.getPublisher() %></th>
				<th><%=book.getPublishDate() %></th>
				<th><%=book.getPrice() %></th>
				<th><%=book.getImageID() %></th>
				<th><%=book.getStock()%></th>
				<th><%=book.getRecommend()%></th>
			  </tr>
<%
	}
}else{
%>
			  <tr><th> 재고관리 목록에 책이 없습니다. </th></tr>
<%
}
%>
	 </tbody>
	</table>
</form>	
</div>
</body>
</html>