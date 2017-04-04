<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체 도서 테스트 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
Book[] books = mymgr.getBooks();
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container" id="BD"><br><br>
<div class="row">
	<div class="col-lg-2"></div>
	<div class="col-lg-6" style="border:solid 0.1rem; margin:1rem; padding:1rem;">
<!-- 12열을 나눠서 가운데 4열만 상세페이지로 사용 -->					
<%
	for(Book book: books){	
%>			
			<div style="bor\der: black solid 0.1rem; margin:2rem; padding:2rem;">
				<img src="<%=book.getImageID()%>" style="width:150px;height:200px; float:left; margin:3rem;">
				<br>
				<div>
				책제목 : <%=book.getBookName()%><br>
				출판사 : <%=book.getPublisher() %><br>
				출판일 : <%=book.getPublishDate() %><br>
				저  자 : <%=book.getAuthor() %><br>	
				금  액 : <%=book.getPrice() %>
				<hr style="border: solid 0.1rem;">
				배송료 : 2500원(1만원 이상시 무료)<br>
				수령 예상일 : 온라인 주문시 2일 소요<br>
				         (오프라인 방문시 당일 수령가능)
				<hr style="border: solid 0.1rem;">			
				</div>
			</div>
<%
	}
%>											
		</div>	
	</div>
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>