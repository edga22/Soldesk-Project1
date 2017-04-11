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
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
%>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<div class="container" id="bim">
<form>
<div style="border:0.1rem solid black;"><!-- 도서 수정 -->		
	 	 <label>도 서 명:<input type="text" name="bookName" placeholder="책이름" ></label>
		 <label>카테고리:<input type="number" name="categoryID" placeholder="카테고리" ></label>
		 <label>작 가 명:<input type="text" name="author" placeholder="작가" ></label>
		 <label>출 판 사:<input type="text" name="publisher" placeholder="출판사" ></label>
		 <label>출 판 일:<input type="text" name="publishDate" placeholder="양식필수(yyyy-mm-dd)" ></label>
		 <label>책 금 액:<input type="number" name="price" placeholder="금액" ></label>
		 <label>이 미 지:<input type="text" name="imageID" placeholder="책표지 주소(.jpg)" ></label>
		 <label>재     고:<input type="number" name="stock" placeholder="등록 수량" ></label>
		<br>
		<button type="submit" formaction="/inven/bookMod.jsp" class="btn btn-default">수정</button>
		<button type="submit" formaction="/inven/bookDel.jsp" class="btn btn-default">삭제</button>
</div>
<hr style="border: solid 0.1rem;"> 
<h3>전체 도서 검색 결과</h3>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>도서번호</th>
		<th>도서명</th>
		<th>카테고리번호</th>
		<th>작가</th>
		<th>출판사</th>
		<th>출판일</th>
		<th>금 액(원)</th>
		<th>책표지 주소</th>
		<th>재고</th>
	  </tr>
	 </thead>
	 <tbody>
<%
Book[] books = mymgr.getBooks();
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