<%@page import="mgr.BestsellerMgr"%>
<%@page import="domain.OrderDetail"%>
<%@page import="mgr.BookMgr"%>
<%@page import="domain.Book"%>
<%@page import="dao.DbBasedBestsellerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	DbBasedBestsellerDao dao=new DbBasedBestsellerDao();
	BookMgr mgr=new BookMgr();
	BestsellerMgr bmgr=new BestsellerMgr();
	
	OrderDetail[] order=dao.getBestID();
	bmgr.reverse(order);
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<head>
	<script type="text/javascript" src="/js/paging.js">
		$(‘#paging’).paging({current:5,max:50}); 
	</script>
</head>
<title>베스트셀러</title>
<style>
#img{
	float: left;
}
.center {
    text-align: center;
}
</style>
</head>
<body>
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div id="monthBestseller">
<!-- 시작 -->
<div class="container"> 
<!-- 베스트셀러 탭 -->
<div class="row">

<!-- 탭 제목 -->
<ul class="nav nav-tabs">
  <li class="active"><a href="/shop/monthBestseller.jsp">월간베스트</a></li>
  <li><a href="/shop/newBestseller.jsp">신간베스트</a></li>
  <li><a href="/shop/ebookBestseller.jsp">E-book</a></li>
</ul>
</div> <!-- 탭 제목 -->

<!-- 베스트셀러 탭 내용 -->
<div class="tab-content"> 
  <div class="tab-pane fade in active">
  	<div class="row">
    	<h3 class="col-sm-8">이 달의 베스트</h3>
    	<div class="col-sm-2">
       		<form action="/shop/basket.jsp">
    			<input type="submit" class="btn btn-default" value="장바구니에 담기">
    		</form>
    	</div>
    	<div class="col-sm-2">
    		<form action="/shop/Payment.jsp">
 	  			<input type="submit" class="btn btn-default" value="바로구매">
 	  		</form>
 	  	</div>
    </div>
    
    <% if(order==null || order.length==0){%>
    <!-- 도서 한권 리스트 -->
 	  <li class="list-group-item"> 
 	  	<h2>준비중 입니다 :(</h2>
 	  </li> <!-- 도서 한권 리스트 -->
 	<% }%>
 	
    <ul class="list-group">
      <!-- 도서 한권 리스트 -->
      <% for(int i=0;i<order.length;i++){
    	int booIdInt = order[i].getBookID();
		Book book=mgr.getBook(order[i].getBookID());
		String bookIdLink = "/inven/bookDetail.jsp?bookID="+booIdInt;
		String bookNamestr = book.getBookName();	
		%>
 	  <li class="list-group-item"> 
 	  <div class="row">
 	  	<div class="col-sm-1"><input type="checkbox"/></div>
 	  	<div class="col-sm-2"><img id="img" src="<%=book.getImageID()%>"/></div>
 	  	<div class="col-sm-7">
 	  		<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a>
			<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 새창으로보기" target="_blank"></a>
			<a><i class="glyphicon glyphicon-new-window" style="font-size:0.6rem;color:#555"></i></a><br>
 	  		<p><%=book.getAuthor()%> | <%=book.getPublisher() %> | <%=book.getPublishDate() %></p> 
 	  		<p><%=book.getPrice() %> ￦</p>
 	  	</div>
 	  	<div class="col-sm-2">
 	  		<a class="btn btn-default btn-block" href="/shop/basket.jsp?bookID=<%=book.getBookID()%>">장바구니에 담기</a>
            <a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=book.getBookID()%>">바로 구매</a>
 	  	</div>
 	   </div>
 	  </li> <!-- 도서 한권 리스트 -->
 	  <%} %>
	</ul>
</div>

<!-- 페이징 -->
<div class="center">
	<ul class="pagination">
  		<li><a id="paging">1</a></li>
  		<li><a id="paging">2</a></li>
  		<li><a id="paging">3</a></li>
  		<li><a id="paging">4</a></li>
  		<li><a id="paging">5</a></li>
	</ul>
</div> <!-- 페이징 -->
</div> <!-- 베스트셀러 탭 내용 -->
</div> <!-- 끝 -->
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>