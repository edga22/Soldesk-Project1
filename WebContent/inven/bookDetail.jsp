<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 상세페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
#tb1 th{
	text-align:center;
}
</style>
</head>
<body>
<%
BookMgr mymgr = new BookMgr();
int bookID = 1;
String tmp = request.getParameter("bookID");
if(tmp == null || tmp.equals("")){
}else{
	bookID = Integer.parseInt(tmp);
	}
Book book = mymgr.getBook(bookID);
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container" id="BD"><br><br>
<div class="row">
<form>
	<div class="col-lg-3"></div>
	<div class="col-lg-6" style="border:solid 0.2rem gray; margin:0; padding:0;">
		<div class="col-lg-12" style="margin:0; padding:0;">
		 <table id="tb1" class="table table-condensed">
			<tr class="active"><th><h3><%=book.getBookName()%></h3></th></tr>
		 </table>
		</div>
		<div class="col-lg-5">
			<img src="<%=book.getImageID()%>" style="width:18rem; height:26rem; margin-left:3rem; margin-bottom:5rem;"/>
		</div>
		<div class="col-lg-7">
			출판사 : <%=book.getPublisher() %><br>
			출판일 : <%=book.getPublishDate() %><br>
			저  자 : <%=book.getAuthor() %><br>	
			금  액 : <%=book.getPrice() %>원<br>	
			적  립 : <%= (int)(book.getPrice()*0.1) %>point<br>	
			재  고 : <%=book.getStock() %>권
			<hr style="border: solid 0.1rem gray;">
			배송료 : 2500원(1만원 이상시 무료)<br>
			수령 예상일 : 온라인 주문시 2일 소요<br>
			         (오프라인 방문시 당일 수령가능)
			<hr style="border: solid 0.1rem gray;">
			<input type="hidden" name="bookID" value="<%=bookID%>">
			<label>수량 : <input type="number" name="cnt" style="width:10rem;" value="1"></label>	
		</div>				
		<div class="col-lg-12">
			<table id="tb1" class="table table-condensed table-striped">
				<tr><th>목차</th></tr>
				<tr><td><%=book.getSubtitle() %></td></tr>
				<tr><th>내용</th></tr>
				<tr><td><%=book.getDescription() %></td></tr>
			</table><br><br>
		</div>
		<div class="col-lg-12" align="right" style="margin-bottom:2rem;">			
			<button type="submit" formaction="/shop/payment.jsp" class="btn btn-danger glyphicon glyphicon-usd">즉시구매</button>
			<button type="submit" formaction="/shop/basket.jsp" class="btn btn-warning glyphicon glyphicon-gift">찜하기</button>
		</div>					
	</div>
	<div class="col-lg-3"></div>	
</form>	
</div>
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>