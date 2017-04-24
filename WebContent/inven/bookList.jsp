<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="//cdn.ckeditor.com/4.6.2/basic/ckeditor.js"></script>
<style>
#counter {
  background:rgba(255,0,0,0.5);
  border-radius: 0.5em;
  padding: 0 .5em 0 .5em;
  font-size: 0.75em;
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
<%
BookMgr mymgr = new BookMgr();
String bookName = request.getParameter("bookName");
int bookID = Integer.parseInt(request.getParameter("bookID"));
%>
<jsp:include page="/inven/invenMain_nav.jsp"></jsp:include>
<form action="/inven/bookMod.jsp" method="post">
<div class="container" id="bim">
	<br>
	<div style="border:0.1rem solid black; padding:1rem; margin:1rem;"><!-- 도서 수정 -->
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
		<div id="block">
		  <br><h4>부 제목</h4>
		  <textarea rows="3" cols=100% name="subtitle" id="content" maxlength="250"
				style="width: 100%; resize:none;" placeholder="내용 작성"></textarea>
   		  	<span id="counter">255</span><br><br>
   		  <h4>목차</h4>
          <textarea rows="5" cols=100% name="contents" id="contents"
                style="width: 100%; resize:none;" placeholder="내용 작성"></textarea>
		  <h4>책 내용</h4>
		  <textarea rows="8" cols=100% name="description" id="description"
				style="width: 100%; resize:none;" placeholder="내용 작성"></textarea>
	  </div>
	</div>
	<script>
	   // Replace the <textarea id="editor1"> with a CKEditor
	   // instance, using default configuration.
	   CKEDITOR.replace( 'content' );
	   CKEDITOR.replace( 'contents' );
	   CKEDITOR.replace( 'description' );
	</script>
	<button type="submit" class="btn btn-default">수정</button>	
	<hr style="border: solid 0.1rem;"> 
</div>
<div id="BLA" class="container">
<h3>전체 도서 검색 결과</h3>
	<table class="table table-condensed">
	 <thead>
	  <tr class="info">
		<th>도서번호</th>
		<th>도서명</th>
		<th>카테고리번호</th>
		<th>작가/번역</th>
		<th>출판사</th>
		<th>출판일</th>
		<th>금 액(원)</th>
		<th>책표지 주소</th>
		<th>재고</th>
		<th>상태(1:추천)</th>
	  </tr>
	 </thead>
	 <tbody>
<%
Book[] books = mymgr.getAllBooks();
Book check = new Book();
if( books != null){
	for(Book book: books){
		if(book.getBookName().equals(bookName)){
			check.setBookName(book.getBookName());
%>	 	
			  <tr>
				<th><%=book.getBookID()%><input type="number" value="<%=book.getBookID()%>" name="bookID" hidden></th>
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
				<tr class="active"><th colspan="10" style="text-align:center;">소제목</th></tr>
				<tr><td colspan="10"><%=book.getSubtitle() %></td></tr>		
				<tr class="active"><th colspan="10" style="text-align:center;">목차</th></tr>
                <tr><td colspan="10"><%=book.getContents() %></td></tr>     
	 			<tr class="active"><th colspan="10" style="text-align:center;">내용</th></tr>
	 			<tr><td colspan="10"><%=book.getDescription() %></td></tr>

<%
		}
	} 
	if(check.getBookName() == null || check.getBookName().equals("") ){
%>
		  <tr><th> 요청하신 도서"<%=bookName%>"가 존재하지 않습니다. </th></tr>
		  </tbody>
<%					
	}
}else{
%>
			  <tr><th> 재고관리 목록에 책이 없습니다. </th></tr>
			  </tbody>
<%
}
%>
	</table>
</div>
</form>
</body>
</html>