<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mgr.BasketMgr"
		import="domain.Basket" %>
<%
	BasketMgr mgr;	
	Basket[] basketList;
	
	String bID=request.getParameter("bookID");
	String count=request.getParameter("cnt");
	
	if(session.getAttribute("basket")==null) {
        mgr=new BasketMgr();
        session.setAttribute("basket", mgr);
    }
	else mgr=(BasketMgr)session.getAttribute("basket");
	
	boolean flag = false;
	
	if(bID!=null) {
		int bookID = Integer.parseInt(bID);			
		int cnt=(count!=null)?Integer.parseInt(count):1;
		mgr.add(bookID, cnt);
        flag = true;			
	}
	
    basketList=mgr.getlist();
    
    if(flag)
    {
%>
        <jsp:forward page="basketproc.jsp"></jsp:forward>
<%
    }
    
    //도서 금액
    int bookPrice = 0;
    //배송비
    int delivery = 0;
    //총 주문금액
    int totalPrice = 0;
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
$(document).ready(function(){     
	$('#checkall').click(function(){
		//만약 전체 선택 체크박스가 체크된상태일경우 
		if($("#checkall").prop("checked")){ 
			//해당화면에 전체 checkbox들을 체크해준다 
			$(":checkbox").prop("checked",true); 
		// 전체선택 체크박스가 해제된 경우 
		}else{ 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			$(":checkbox").prop("checked",false);
		} 
	});

 	$('td').find(':checkbox').click(function () { 		
		var amt1 = 0;
		var amt2 = 0;
		var amt3 = 0;
		var amt4 = 0;
		$('td').find(':checkbox').each(function () {
			if ($(this).is(':checked')) {
				var amt = $(this).val();
				var amtNum = amt.split(',');				
				amt1 = amt1 + parseInt(amtNum[1]) * parseInt(amtNum[2]);
				amt2 = amt1 * 90 / 100;
				amt3 = amt1 * 10 / 100;
				amt4 = 0;
			}
		});
		$('span.total').hide();
		$('span.result1').text(amt1);
		$('span.result2').text(amt2);
		$('span.result3').text(amt3);		
	});
 	
 	$('#btnRemovebasket').on('click', function(e) {
        var arrRemoved = $('[name="bookIdList"]:checked');
        var arrParam = new Array();
        $.each(arrRemoved, function(i,v) {
           var arrRemovedStr = $(v).val();
           var arrBookInfo = arrRemovedStr.split(',');
           var arrBookId = 'bookID='+arrBookInfo[0];
           //arrBooId = arrBookId.join("&");
           arrParam.push(arrBookId);
        });
        
        var arrboolid = arrParam.join('&');
        console.log(arrParam.length);
        console.log(arrParam);
        console.log(arrboolid);
        //return false;
        location.href = '/shop/basketDeleteValues.jsp?' + arrboolid;
     });
 	
 	 $('#btnSelecBasket').on('click', function(e) {
        var arrRemoved = $('[name="bookIdList"]:checked');
        var arrParam = new Array();
        $.each(arrRemoved, function(i,v) {
           var arrRemovedStr = $(v).val();
           var arrBookInfo = arrRemovedStr.split(',');
           var arrBookId = 'bookID='+arrBookInfo[0]+'&';
           var arrBookCnt = arrBookId+'cnt='+arrBookInfo[2];
           arrParam.push(arrBookCnt);
        });
        
        var arrBookCnt = arrParam.join('&');        
        console.log(arrParam);
        console.log(arrBookCnt);
        //return false;
        location.href = '/shop/payment.jsp?' + arrBookCnt;
     });
});
</script>

<title>장바구니</title>

<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container" id="basket">
	<!-- 장바구니 패널 -->
	<div class="panel panel-default"> 
	  <div class="panel-heading"><h2>장바구니</h2></div>
	  <div class="panel-body">회원가입을 하시면 통합포인트 적립, 쿠폰사용을 통한 추가할인, 추가적립 등 다양한 혜택이 가득합니다.</div>
	</div> 
	<!--// 장바구니 패널 -->	
	<!-- 장바구니 목록 table -->	
	<div class="table-responsive">
		<!-- 전체선택과 버튼들 -->
		<div class="row" style="margin:0;padding:0">
			<div class="col-sm-4">
				<h3>목록</h3>
			</div>
			<div class="col-sm-8 text-right" style="margin-top:18px;">
				<input type="button" class="btn btn-default btn-sm" value="선택상품삭제" id="btnRemovebasket"/>
			</div>
		</div>
		<!--// 전체선택과 버튼들 -->
		<table class="table table-hover table-condensed">
		    <thead>
		      <tr class="info text-center">			      	
		        <th colspan="2" class="text-center" >상품명</th>
		        <th style="padding-left:35px;width:10%;min-width:180px;">가격</th>
		        <th style="text-align:center;width:10%;min-width:100px;">수량</th>
		        <th style="text-align:center;width:10%;min-width:100px;">선택</th>
		        <th class="text-center"><input type="checkbox" id="checkall" checked="checked"></th>
		      </tr>				    
		    </thead>
		    <tbody>
		   	    <%if(basketList.length==0){%>
		    	<tr>
		    		<td colspan="6" style="vertical-align:middle;text-align:center"><h2>장바구니가 비었습니다 :( </h2></td>		    		
		    	</tr>
		    	<%} %>
		    	<% 
		    	int totalBookPrice = 0;
		    	
		    	for(int i=0;i<basketList.length; i++) {
		    		int booIdInt = basketList[i].getBook().getBookID();
		    		bookPrice = basketList[i].getBook().getPrice();
		    		int bookSalePrice = bookPrice*100/100;
		    		int bookPoint = bookSalePrice*10/100;
		    		int bootCnt = basketList[i].getCnt();
		    		String bookIdLink = "/inven/bookDetail.jsp?bookID="+booIdInt;
		    		String bookNamestr = basketList[i].getBook().getBookName();	    		
		    		
		    		totalBookPrice += bookSalePrice;
		    	%>
		   		<tr>				      	
			        <td style="vertical-align:middle;text-align:right;width:45px;">
			        	<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기">
			        	<img src="<%=basketList[i].getBook().getImageID() %>"></a>
			        </td>
			        <td style="vertical-align:middle;">
			        	<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a>
			        	<a href="<%=bookIdLink %>" title="<%=bookNamestr %> 새창으로보기" target="_blank">
			        	<i class="glyphicon glyphicon-new-window" style="font-size:0.6rem;color:#555"></i></a><br>
			        	*지금 주문하면 "오늘 출고" 가능(출고후 1~2일 이내 수령)
			        </td>
			        <td style="vertical-align:middle;">
			        	정가: <del><%=bookPrice %></del>원<br>
			        	판매가: <%=bookSalePrice %>원<br>
			        	포인트: <%=bookPoint %>P (10%)			        	
			        </td>
			        <td style="vertical-align:middle;text-align:center">
			            <form action="/shop/basketUpdate.jsp">
			                <input type="hidden" name="bookID" value="<%=booIdInt%>"/>
							<input type="number" name="cnt" min="1" value="" placeholder="<%=bootCnt%>" style="width:15%;min-width:40px" />
							<input type="submit" class="btn btn-default btn-sm" value="변경" id="btnCntChangeBasket"/>
						</form>
			        </td>
			        <td style="vertical-align:middle;text-align:center">
				    	<a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=booIdInt%>&cnt=<%=bootCnt%>">바로 구매</a>
                        <a class="btn btn-default btn-block" href="/shop/basketDelete.jsp?bookID=<%=booIdInt%>">삭제</a>
					</td>
					<td style="vertical-align:middle;text-align:center">
						<input type="checkbox" name="bookIdList" value="<%=booIdInt%>,<%=bookPrice%>,<%=bootCnt%>" checked="checked">
					</td>
		      	</tr>
		      	<% } %>
		    </tbody>
		</table>
	</div>
	<!--//장바구니 목록 테이블 -->
	<%
    if(totalBookPrice >= 9900 || totalBookPrice == 0) delivery=0;
    else delivery = 2500;
    totalPrice = totalBookPrice + delivery;
    %>
	<!-- 가격 테이블 -->
	<div class="row">
		<div class="col-sm-12">
			<h3>가격</h3>
			<table class="table">
			    <thead>
			      <tr>
			        <th>상품금액</th>
			        <th>배송비</th>
			        <th>결제 예정금액</th>
			        <th>적립예정</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			    	<td><span class="total"><%= totalPrice %></span><span class="result1"></span>원</td>
			    	<td><span class="total"><%= delivery %></span><span class="result4"></span>원</td>
			    	<td><span class="total"><%= totalPrice + delivery %></span><span class="result2"></span>원</td>
			    	<td><span class="total"><%= totalBookPrice*10/100 %></span><span class="result3"></span>P</td>
			       </tr>
			    </tbody>
			</table> 
		</div>
	</div>
	<!--// 가격 테이블 -->	
	<!-- 주문 및 되돌아가기 -->
	<div class="row">
		<div class="col-sm-7"> 
		   	<a href="/main.jsp" class="btn btn-default text-left" role="button">쇼핑 계속하기</a>
		</div>
		<div class="col-sm-5">
	    	<input type="button" class="btn btn-default btn-lg" value="선택 상품 주문하기" id="btnSelecBasket"/>
		</div>
	</div> <!-- 주문 및 되돌아가기 -->
</div> 
<!--//장바구니 -->
<jsp:include page="/main_foot.jsp"></jsp:include>