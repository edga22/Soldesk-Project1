<%@page import="java.text.NumberFormat"%>
<%@page import="mgr.BestsellerMgr"%>
<%@page import="domain.BestSeller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	BestsellerMgr mgr=new BestsellerMgr();
	BestSeller[] bestseller=mgr.getBestseller();
	
	String monthAgo=mgr.getMonthAgoDate();
	NumberFormat nf = NumberFormat.getNumberInstance();
%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

	<script>
	$(document).ready(function(){  
		$("#allCheck").click(function(){ //만약 전체 선택 체크박스가 체크된상태일경우 
			if($("#allCheck").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다 
				$("input[type=checkbox]").prop("checked",true); // 전체선택 체크박스가 해제된 경우 
			}else { //해당화면에 모든 checkbox들의 체크를해제시킨다. 
				$("input[type=checkbox]").prop("checked",false); 
			} 
		});
		
		$("#allCheck2").click(function(){ //만약 전체 선택 체크박스가 체크된상태일경우 
			if($("#allCheck2").prop("checked")) { //해당화면에 전체 checkbox들을 체크해준다 
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
		
		$('#btnSelectBasket2').on('click', function(e) {
			var arrChecked = $('[name="bookIdList2"]:checked');
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
		
		$('#btnSelectPayment2').on('click', function(e) {
			var arrChecked = $('[name="bookIdList2"]:checked');
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
		#menu div{ 
		height: 70px;
		padding: 15px 2px 10px 2px;}
	</style>

<title>베스트셀러</title>

<jsp:include page="/main_navbar.jsp"></jsp:include>

<div id="monthBestseller">
	<!-- 시작 -->
	<div class="container"> 
		<ul class="nav nav-tabs">
	  		<li class="active"><a data-toggle="tab" href="#month">전체 베스트</a></li>
	  		<li><a data-toggle="tab" href="#new">신간 베스트</a></li>
	  		<!-- <li><a data-toggle="tab" href="#">e-book 베스트</a></li> -->
		</ul>
		
		<div class="tab-content"> <!-- 탭 내용 -->
		<!-- 전체 베스트셀러 -->
		    <div id="month" class="tab-pane fade in active">
			  	<div class="row" id="menu">
			    	<div class="col-md-1 text-right">
			    		<label><input type="checkbox" checked="checked" id="allCheck"/> 전체선택</label>
			    	</div>
			    	<div class="col-md-8">
			    		
			    	</div>
			    	<div class="col-md-2 text-right">
			    		<input type="submit" class="btn btn-default" value="장바구니에 담기" id="btnSelectBasket">
			    	</div>
			    	<div class="col-md-1">
			 	  		<input type="submit" class="btn btn-default btn-primary" value="바로구매" id="btnSelectPayment">
			    	</div>
			    </div>
		    
			    <ul class="list-group">
			    <% if(bestseller==null || bestseller.length==0){%>
			    <!-- 도서 한권 리스트 -->
			 	  <li class="list-group-item"> 
			 	  	<h2>준비중 입니다 :(</h2>
			 	  </li> <!-- 도서 한권 리스트 -->
			 	<% } %>
			    
			      <!-- 도서 한권 리스트 -->
			      <%
			      	for(int i=0;i<10;i++){
			    	int bookIdInt = bestseller[i].getBookID();
					String bookIdLink = "/inven/bookDetail.jsp?bookID="+bookIdInt;
					String bookNamestr = bestseller[i].getBook().getBookName();	%>
			 	  <li class="list-group-item"> 
					<div class="row">
				 	  	<div class="col-md-1"><input name="bookIdList" type="checkbox" checked="checked" value="<%=bookIdInt%>"/> <%=i+1 %>.</div>
				 	  	<div class="col-md-2"><img id="img" src="<%=bestseller[i].getBook().getImageID()%>" style="width:85px;height:auto;"/></div>
				 	  	<div class="col-md-7">
				 	  		<h4>
					 	  		<a href="<%=bookIdLink %>" title="<%=bookNamestr%> 바로가기"><%=bookNamestr%></a>
								<a href="<%=bookIdLink %>" title="<%=bookNamestr%> 새창으로보기" target="_blank">
								<i class="glyphicon glyphicon-new-window" style="font-size:1.5rem;color:#555;margin-left:1rem"></i></a>
							</h4>
				 	  		<%=bestseller[i].getBook().getAuthor()%> 지음 | 
				 	  		<%=bestseller[i].getBook().getPublisher() %> | 
				 	  		<%=bestseller[i].getBook().getPublishDate() %><br> 
				 	  		판매가: <%=nf.format(bestseller[i].getBook().getPrice()) %>원<br>
				 	  		적립포인트: <%=nf.format(bestseller[i].getBook().getPrice()/10) %>P
				 	  	</div>
				 	  	<div class="col-md-2" style="vertical-align:middle;">
				 	  		<a class="btn btn-default btn-block" href="/shop/basket.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">장바구니에 담기</a>
				            <a class="btn btn-primary btn-block" href="/shop/payment.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">바로 구매</a>
				 	  	</div>
					</div>
			 	  </li> <!-- 도서 한권 리스트 -->
			 	  <%
			      	}%>
				</ul>
			</div> <!--//전체 베스트셀러 -->
			
			<!-- 신간 베스트셀러 -->
			<div id="new" class="tab-pane fade">
				<div class="row" id="menu">
			    	<div class="col-md-1 text-right">
			    		<label><input type="checkbox" checked="checked" id="allCheck"/> 전체선택</label>
			    	</div>
			    	<div class="col-md-8">
			    		
			    	</div>
			    	<div class="col-md-2 text-right">
			    		<input type="submit" class="btn btn-default" value="장바구니에 담기" id="btnSelectBasket">
			    	</div>
			    	<div class="col-md-1">
			 	  		<input type="submit" class="btn btn-default btn-primary" value="바로구매" id="btnSelectPayment">
			    	</div>
			    </div>
			    
			    <ul class="list-group">
			    <% if(bestseller==null || bestseller.length==0){%>
			    <!-- 도서 한권 리스트 -->
			 	  <li class="list-group-item"> 
			 	  	<h2>준비중 입니다 :(</h2>
			 	  </li> <!-- 도서 한권 리스트 -->
			 	<% }%>
			    
			      <!-- 도서 한권 리스트 -->
			      <% 
			      	for(int i=0;i<10;i++){
			    	String bookDate=mgr.transFormate(bestseller[i].getBook().getPublishDate());
			    	if(bookDate.compareTo(monthAgo)>=0){
			    		int bookIdInt = bestseller[i].getBookID();
						String bookIdLink = "/inven/bookDetail.jsp?bookID="+bookIdInt;
						String bookNamestr = bestseller[i].getBook().getBookName();	%>
			 	  <li class="list-group-item"> 
			 	  <div class="row">
			 	  	<div class="col-md-1"><input name="bookIdList2" type="checkbox" checked="checked" value="<%=bookIdInt%>"/> <%=i+1 %>.</div>
			 	  	<div class="col-md-2"><img id="img" src="<%=bestseller[i].getBook().getImageID()%>" style="width:85px;height:auto;"/></div>
			 	  	<div class="col-md-7">
			 	  		<h4>
				 	  		<a href="<%=bookIdLink %>" title="<%=bookNamestr%> 바로가기"><%=bookNamestr%></a>
							<a href="<%=bookIdLink %>" title="<%=bookNamestr%> 새창으로보기" target="_blank">
							<i class="glyphicon glyphicon-new-window" style="font-size:1.5rem;color:#555;margin-left:1rem"></i></a>
						</h4>
			 	  		<%=bestseller[i].getBook().getAuthor()%> 지음 | 
			 	  		<%=bestseller[i].getBook().getPublisher() %> | 
			 	  		<%=bestseller[i].getBook().getPublishDate() %><br> 
			 	  		판매가: <%=nf.format(bestseller[i].getBook().getPrice()) %>원<br>
			 	  		적립포인트: <%=nf.format(bestseller[i].getBook().getPrice()/10) %>P
			 	  	</div>
			 	  	<div class="col-md-2">
			 	  		<a class="btn btn-default btn-block" href="/shop/basket.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">장바구니에 담기</a>
			            <a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=bestseller[i].getBook().getBookID()%>">바로 구매</a>
			 	  	</div>
			 	   </div>
			 	  </li> <!-- 도서 한권 리스트 -->
			 	  <%
			 	  	}
			 	  } %>
				</ul>
			</div><!-- 신간 베스트셀러 -->
		</div><!-- 탭 내용 -->
	</div> <!-- 끝 -->
</div>

<jsp:include page="/main_foot.jsp"></jsp:include>
