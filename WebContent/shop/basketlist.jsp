<%@page import="java.util.ArrayList"%>
<%@page import="domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int cnt=0;
	ArrayList<Book> bookList=(ArrayList<Book>)session.getAttribute("bookList");
	if((Integer)session.getAttribute("cnt")==null){ //만약 cnt값이 null값이라면?
		cnt=0;
	}
	else cnt=(Integer)session.getAttribute("cnt");

	//상품금액
	int productPrice=0;
	//배송비
	int delivery=0;
	//결제 예정 금액
	int totalPrice=0;
%>
<title>장바구니</title>
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
    <% if(bookList==null || bookList.isEmpty() || cnt==0){%>
    	<tr>
    		<td></td>
    		<td></td>
    		<td colspan="3"><h2>장바구니가 비었습니다 :( </h2></td>
    		<td></td>
    		<td></td>
    	</tr>
    <%}else{ %>
    <% for(int i=0;i<bookList.size();i++){
    	Book books=bookList.get(i);%>
      <tr> 
      	<td><input type="checkbox" name="bookID" value="<%=books.getBookID()%>"/></td>
        <td><img src="<%=books.getImageID() %>"> 
        <%=books.getBookName() %></td>
        <td><%=books.getPrice() %> ￦</td>
        <td>
          <input type="number" name="cnt" min="1" value="<%=cnt%>"/>
       	  <input formaction="basketUpdate.jsp" type="submit" class="btn btn-default btn-sm" size="2" value="변경"/>
        </td>
        <td>
    	<p><a class="btn btn-default btn-block" href="/shop/payment.jsp?bookID=<%=books.getBookID()%>&cnt=<%=cnt%>">바로 구매</a></p>
		<p><a class="btn btn-default btn-block" href="/shop/basketDelete.jsp?bookID=<%=books.getBookID()%>">삭제</a></p>
		</td>
      </tr>
      <%} 
      }%>
      </tbody>
</table> <!-- 테이블 -->

<div class="row">
<div> <!-- 전체선택과 버튼들 -->
     <input formaction="basketDelete.jsp" type="submit" class="btn btn-default" value="선택한 상품 삭제"/>
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
      <% if(bookList==null || bookList.isEmpty() || cnt==0){%>
    	<td>0 ￦</td>
    	<td>0 ￦</td>
    	<td>0 ￦</td>
    	<td>0 ￦</td>
      <%}else{for(int i=0;i<bookList.size();i++){
    		Book books=bookList.get(i);
    		productPrice+=books.getPrice();
    	}if(productPrice<=9800){
    		delivery=2500;
    		totalPrice=productPrice+delivery;}else{
    		totalPrice=productPrice;
    	}
    	%>
       	<td><%=productPrice%> ￦</td>
       	<td><%=delivery %> ￦</td>
        <td><%=totalPrice %> ￦</td>
        <td><%=totalPrice/10 %> P</td>
      <%} %>
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
<jsp:include page="/main_foot.jsp"></jsp:include>