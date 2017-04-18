<%@page import="mgr.BestsellerMgr"%>
<%@page import="domain.BestSeller"%>
<%@page import="dao.DbBasedBestsellerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	BestsellerMgr mgr=new BestsellerMgr();
	DbBasedBestsellerDao dao=new DbBasedBestsellerDao();
	BestSeller[] bestseller=dao.getBestseller();
	
	String monthAgo=mgr.getMonthAgoDate();
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<head>
	<script>
	$(document).ready(function(){  
		$("#allCheck").click(function(){ //만약 전체 선택 체크박스가 체크된상태일경우 
			if($("#allCheck").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다 
				$("input[type=checkbox]").prop("checked",true); // 전체선택 체크박스가 해제된 경우 
			}else { //해당화면에 모든 checkbox들의 체크를해제시킨다. 
				$("input[type=checkbox]").prop("checked",false); 
			} 
		});
		
		$('#btnSelectBasket').on('click', function(e) {
			var arrChecked = $('[name="bookIdList"]:checked');
			var arrParam = new Array();
	        $.each(arrChecked, function(i,v) {
	           var arrCheckedStr = $(v).val();
	           var arrBookInfo = arrCheckedStr.split(',');
	           var arrBookId = 'bookID='+arrBookInfo[0];
	           //arrBooId = arrBookId.join("&");
	           arrParam.push(arrBookId);
	        });
	        var arrboolid = arrParam.join('&');
	        
	        location.href = '/shop/basketAddValues.jsp?' + arrboolid;
	     });
		
		$('#btnSelectPayment').on('click', function(e) {
			var arrChecked = $('[name="bookIdList"]:checked');
			var arrParam = new Array();
	        $.each(arrChecked, function(i,v) {
	           var arrCheckedStr = $(v).val();
	           var arrBookInfo = arrCheckedStr.split(',');
	           var arrBookId = 'bookID='+arrBookInfo[0];
	           //arrBooId = arrBookId.join("&");
	           arrParam.push(arrBookId);
	        });
	        var arrboolid = arrParam.join('&');
	        
	        location.href = '/shop/payment.jsp?' + arrboolid;
	     });
	});
	</script>
	<style type="text/css">
		#img{float: left;}
		.center {text-align: center;}
	</style>
</head>
<title>베스트셀러</title>
<style>
</style>
</head>
<body>
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div id="monthBestseller">
<!-- 시작 -->
<div class="container"> 
	<ul class="nav nav-tabs">
  		<li class="active"><a data-toggle="tab" href="#month">이 달의 베스트</a></li>
  		<li><a data-toggle="tab" href="#new">신간 베스트</a></li>
  		<li><a data-toggle="tab" href="#">e-book 베스트</a></li>
	</ul>
	
	<div class="tab-content"> <!-- 탭 내용 -->
	<!-- 이달의 베스트셀러 -->
    <div id="month" class="tab-pane fade in active">
  	<div class="row">
    	<div class="col-sm-2">
    		<input type="checkbox" checked="checked" id="allCheck"/> 전체선택
    	</div>
    	<div class="col-sm-2">
    		<input type="submit" class="btn btn-default" value="장바구니에 담기" id="btnSelectBasket">
    	</div>
    	<div class="col-sm-2">
 	  		<input type="submit" class="btn btn-default btn-primary" value="바로구매" id="btnSelectPayment">
    	</div>
    </div>
    
    <% if(bestseller==null || bestseller.length==0){%>
    <!-- 도서 한권 리스트 -->
 	  <li class="list-group-item"> 
 	  	<h2>준비중 입니다 :(</h2>
 	  </li> <!-- 도서 한권 리스트 -->
 	<% }%>
 	
    <ul class="list-group">
      <!-- 도서 한권 리스트 -->
      <% 
      	for(int i=0;i<10;i++){
    	int bookIdInt = bestseller[i].getBookID();
		String bookIdLink = "/inven/bookDetail.jsp?bookID="+bookIdInt;
		String bookNamestr = bestseller[i].getBook().getBookName();	%>
 	  <li class="list-group-item"> 
 	  <div class="row">
 	  	<div class="col-sm-1"><input name="bookIdList" type="checkbox" checked="checked" value="<%=bookIdInt%>"/> <%=i %>.</div>
 	  	<div class="col-sm-2"><img id="img" src="<%=bestseller[i].getBook().getImageID()%>" style="width:85px;height:auto;"/></div>
 	  	<div class="col-sm-7">
 	  		<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a>
			<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 새창으로보기" target="_blank"></a>
			<a><i class="glyphicon glyphicon-new-window" style="font-size:0.6rem;color:#555"></i></a><br>
			
 	  		<p>저자: <%=bestseller[i].getBook().getAuthor()%> | 출판사: <%=bestseller[i].getBook().getPublisher() %> | 출판일: <%=bestseller[i].getBook().getPublishDate() %></p> 
 	  		<p>가격: <%=bestseller[i].getBook().getPrice() %> ￦</p>
 	  	</div>
 	  	<div class="col-sm-2">
 	  		<a class="btn btn-default btn-block" href="/shop/basket.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">장바구니에 담기</a>
            <a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">바로 구매</a>
 	  	</div>
 	   </div>
 	  </li> <!-- 도서 한권 리스트 -->
 	  <%}%>
	</ul>
	</div> <!-- 이달의 베스트셀러 -->
	
	<!-- 신간 베스트셀러 -->
	<div id="new" class="tab-pane fade">
	<div class="row">
    	<div class="col-sm-2">
    		<input type="checkbox" id="allCheck" checked="checked"/> 전체선택
    	</div>
    	<div class="col-sm-2">
    		<input type="submit" class="btn btn-default" value="장바구니에 담기" id="btnSelectBasket">
    	</div>
    	<div class="col-sm-2">
 	  		<input type="submit" class="btn btn-default btn-primary" value="바로구매">
    	</div>
    </div>
    
    <% if(bestseller==null || bestseller.length==0){%>
    <!-- 도서 한권 리스트 -->
 	  <li class="list-group-item"> 
 	  	<h2>준비중 입니다 :(</h2>
 	  </li> <!-- 도서 한권 리스트 -->
 	<% }%>
 	
    <ul class="list-group">
      <!-- 도서 한권 리스트 -->
      <% for(int i=0;i<10;i++){
    	String bookDate=mgr.transFormate(bestseller[i].getBook().getPublishDate());
    	if(bookDate.compareTo(monthAgo)>=0){
    		int booIdInt = bestseller[i].getBookID();
			String bookIdLink = "/inven/bookDetail.jsp?bookID="+booIdInt;
			String bookNamestr = bestseller[i].getBook().getBookName();	%>
 	  <li class="list-group-item"> 
 	  <div class="row">
 	  	<div class="col-sm-1"><input type="checkbox" checked="checked"/> <%=i %>.</div>
 	  	<div class="col-sm-2"><img id="img" src="<%=bestseller[i].getBook().getImageID()%>" style="width:85px;height:auto;"/></div>
 	  	<div class="col-sm-7">
 	  		<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a>
			<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 새창으로보기" target="_blank"></a>
			<a><i class="glyphicon glyphicon-new-window" style="font-size:0.6rem;color:#555"></i></a><br>
 	  		<p>저자: <%=bestseller[i].getBook().getAuthor()%> | 출판사: <%=bestseller[i].getBook().getPublisher() %> | 출판일: <%=bestseller[i].getBook().getPublishDate() %></p> 
 	  		<p>가격: <%=bestseller[i].getBook().getPrice() %> ￦</p>
 	  	</div>
 	  	<div class="col-sm-2">
 	  		<a class="btn btn-default btn-block" href="/shop/basket.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">장바구니에 담기</a>
            <a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">바로 구매</a>
 	  	</div>
 	   </div>
 	  </li> <!-- 도서 한권 리스트 -->
 	  <%}
 	  } %>
	</ul>
	</div><!-- 신간 베스트셀러 -->
	</div><!-- 탭 내용 -->
</div> <!-- 끝 -->
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>