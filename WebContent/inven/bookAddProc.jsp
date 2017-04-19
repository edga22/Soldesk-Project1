<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
Book newbook = new Book();
// 입력한 데이터 저장하기
java.sql.Date date = new java.sql.Date(mymgr.changeDate(request.getParameter("publishDate")).getTime());
newbook.setPublishDate(date);
newbook.setBookName(request.getParameter("bookName"));
newbook.setAuthor(request.getParameter("author"));
newbook.setPublisher(request.getParameter("publisher"));
newbook.setPrice(Integer.parseInt(request.getParameter("price")));
newbook.setImageID(request.getParameter("imageID"));
newbook.setStock(Integer.parseInt(request.getParameter("stock")));
newbook.setCategoryID(Integer.parseInt(request.getParameter("categoryID")));
newbook.setSubtitle(request.getParameter("subtitle"));
newbook.setDescription(request.getParameter("description"));
newbook.setRecommend(Integer.parseInt(request.getParameter("recommend")));
//새책 생성
mymgr.addBook(newbook);
%>
<jsp:include page="/inven/invenMain.jsp"></jsp:include>
<div id="BAdd" class="container">
<h2>도서 추가 결과</h2>
	<table class="table table-condensed">
	 <thead>
	  <tr class="active">
		<th>도서명</th>
		<th>카테고리번호</th>
		<th>작가</th>
		<th>출판사</th>
		<th>출판일</th>
		<th>금 액(원)</th>
		<th>책표지 주소</th>
		<th>재고</th>		
		<th>상태(1:추천)</th>		
	  </tr>
	  <tr>
		<td><%=newbook.getBookName()%></td>
		<td><%=newbook.getCategoryID()%></td>
		<td><%=newbook.getAuthor() %></td>
		<td><%=newbook.getPublisher() %></td>
		<td><%=newbook.getPublishDate() %></td>
		<td><%=newbook.getPrice() %></td>
		<td><%=newbook.getImageID() %></td>
		<td><%=newbook.getStock() %></td>
		<td><%=newbook.getRecommend() %></td>
	  </tr>	  
	 </thead>
	 <tbody>	 	
	    <tr class="active"><th colspan="10" style="text-align:center;">소제목</th></tr>
		<tr><td colspan="10"><%=newbook.getSubtitle() %></td></tr>			
	 </tbody>
	 <tfoot> 	
	 	<tr class="active"><th colspan="10" style="text-align:center;">내용</th></tr>
		<tr><td colspan="10"><%=newbook.getDescription() %></td></tr>
	 </tfoot>
	</table>	
</div>
</body>
</html>