<%@page import="mgr.BasketMgr"
		import="domain.Basket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<%
	BasketMgr mgr;	
	Basket[] basketList;
	
	String bID=request.getParameter("bookID");
	String count=request.getParameter("cnt");
	String mode=request.getParameter("mod");
	
	if(session.getAttribute("basket")==null) {
		mgr=new BasketMgr();
		session.setAttribute("basket", mgr);
	}
	else mgr=(BasketMgr)session.getAttribute("basket");
		
	boolean flag = false;
	
	if(bID!=null) {
		flag=true;
		int bookID = Integer.parseInt(bID);
		
		if(mode != null){
			
		}else{
			
		int cnt=(count!=null)?Integer.parseInt(count):1;	

		mgr.add(bookID, cnt);
		out.println("<script>alert('장바구니에 추가했습니다.'); location.href='basket.jsp';</script>");
		}
	}
	
	basketList=mgr.getlist();
	
	if(flag)
	{
		%>
		<jsp:forward page="basketproc.jsp"></jsp:forward>
		<%
	}	
	
	//도서 금액
	int bookPrice=0;
	//배송비
	int delivery=0;
	//총 주문금액
	int totalPrice=0;
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

 	$('form').find(':checkbox').click(function () {
		var amt1 = 0;
		var amt2 = 0;
		var amt3 = 0;
		$('td').find(':checkbox').each(function () {
			if ($(this).is(':checked')) {
				amt1 = amt1 + parseInt($(this).val());
				amt2 = amt1 * 90 / 100;
				amt3 = amt1 * 5 / 100;
			}
		});
		$('span.total').hide();
		$('span.result1').text(amt1);
		$('span.result2').text(amt2);
		$('span.result3').text(amt3);		
	});
});
</script>
<title>장바구니</title>
</head>
<body>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container"> 
<div id="basket">
<!-- 장바구니 패널 -->
<div class="panel panel-default"> 
  <div class="panel-heading"><h2>장바구니</h2></div>
  <div class="panel-body">회원가입을 하시면 통합포인트 적립, 쿠폰사용을 통한 추가할인, 추가적립 등 다양한 혜택이 가득합니다.</div>
</div> <!-- 장바구니 패널 -->
<form>
<div class="row">
<!-- table -->
<h2>목록</h2>
<table class="table table-hover">
    <thead>
      <tr>
      	<th class="col-sm-1"></th>
        <th class="col-sm-3">상품명</th>
        <th class="col-sm-2">가격</th>
        <th class="col-sm-2">수량</th>
        <th class="col-sm-2">선택</th>
      </tr>
    
    </thead>
    <tbody>
   	    <%if(basketList.length==0){%>
    	<tr>
    		<td></td>
    		<td colspan="2"><h2>장바구니가 비었습니다 :( </h2></td>
    		<td></td>
    		<td></td>
    	</tr>
    	<%} %>
    <%for(int i=0;i<basketList.length; i++) {
    		int booIdInt = basketList[i].getBook().getBookID();
    		bookPrice = basketList[i].getBook().getPrice();
    		int bootCnt = basketList[i].getCnt();
    		String bookIdLink = "/inven/bookDetail.jsp?bookID="+booIdInt;
		    String bookNamestr = basketList[i].getBook().getBookName();	  %>
   	<tr>
      	<td><input type="checkbox" name="bookID" value="<%=basketList[i].getBook().getBookID()%>"/></td>
        <td><img src="<%=basketList[i].getBook().getImageID()%>"> <%=basketList[i].getBook().getBookName() %></td>
        <td><%=basketList[i].getBook().getPrice() %> ￦</td>
        <td>
          <input type="number" name="cnt" min="1" value="<%=bootCnt%>"/>
       	  <p><a class="btn btn-default btn-sm" href="/shop/basketUpdate.jsp?bookID=<%=basketList[i].getBook().getBookID()%>&cnt=">변경</a></p>
        </td>
        <td>
    	<p><a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=basketList[i].getBook().getBookID()%>&cnt=<%=basketList[i].getCnt()%>">바로 구매</a></p>
		<p><a class="btn btn-default btn-block" href="/shop/basketDelete.jsp?bookID=<%=basketList[i].getBook().getBookID()%>">삭제</a></p>
		</td>
      </tr>
      <%
     	bookPrice+=basketList[i].getBook().getPrice();
    } %>
      </tbody>
</table> <!-- 테이블 -->

<div class="row">
<div> <!-- 전체선택과 버튼들 -->
     <input formaction="/shop/basketDeleteValues.jsp" type="submit" class="btn btn-default" value="선택한 상품 삭제"/>
</div> <!-- 전체선택과 버튼들 -->
</div>

<!-- 가격 테이블 -->
<h2>가격</h2>
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
    	<td><%=bookPrice %> ￦</td>
    	<%
    		if(bookPrice>=9900 || bookPrice==0) delivery=0;
    		else delivery=2500;
    		totalPrice=bookPrice+delivery;
    	%>
    	<td><%=delivery %> ￦</td>
    	<td><%=totalPrice %> ￦</td>
    	<td><%=bookPrice/100 %> P</td>
       </tr>
    </tbody>
</table> <!-- 가격 테이블 -->

<!-- 주문 및 되돌아가기 -->
<div class="row">
	<div class="col-sm-8"></div>
	<div class="col-sm-2"> 
    	<input formaction="/main.jsp" type="submit" class="btn btn-default" value="쇼핑 계속하기"/>
    </div>
    
    <div class="col-sm-2"> 
    	<input formaction="/shop/payment.jsp" type="submit" class="btn btn-default" value="주문하기"/>
	</div>
</div> <!-- 주문 및 되돌아가기 -->
</form>
</div> <!-- 끝 -->
</div>
<jsp:include page="/main_foot.jsp"/>
</body>
</html>