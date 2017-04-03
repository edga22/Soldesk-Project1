<%@page import="dao.DbBasedBookDao"%>
<%@page import="domain.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mgr.SearchMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("utf-8");
	//로그인이 되어있지 않았다면?
	String memberID=(String)session.getAttribute("memberID");
	if(memberID == null && memberID.equals("")){
		response.sendRedirect("/sign/signIn.jsp");
	}
	
	DbBasedBookDao bookDao=new DbBasedBookDao();
	Book book=new Book();
	// Book 객체를 리스트에 저장할 객체 생성
	ArrayList<Book> bookList=new ArrayList<Book>();

	try{
		//책 ID (session)
		int bookID=(int)session.getAttribute("bookID");
		//bookID를 통해 책 한권을 가져온다.
		book=bookDao.getBook(bookID);
		//책 한권을 장바구니 목록에 넣는다.
		bookList.add(book);
	}catch(NullPointerException e){
		e.printStackTrace();
	}
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

<div class="row">
<div> <!-- 전체선택과 버튼들 -->
	<form class="form-horizontal">
     	<input type="button" class="btn btn-default" value="선택한 상품 삭제"/>
	</form>
</div> <!-- 전체선택과 버튼들 -->
</div>

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
    <% if(bookList==null){%>
    	<h3>장바구니에 상품이 없습니다 :)</h3>
    <% }else{
    		for(int i=0;i<bookList.size();i++){
    		Book books=bookList.get(i);%>
      <tr> 
      	<td><input type="checkbox" name="#"/></td>
        <td><%=books.getImageID() %>
        	<%=books.getBookName() %>
        </td>
        <td><%=books.getPrice() %></td>
        <td>
        <form action="#">
          <input type="number" name="#" min="1" value="1"/>
       	  <input type="button" class="btn btn-default btn-sm" size="2" value="변경"/>
       	</form>
        </td>
        <td>
        <form action="/shop/Payment.jsp">
    		<input type="submit" class="btn btn-default btn-block" value="바로주문"/>
		</form>
		<button type="button" class="btn btn-default btn-block">삭제</button>
		</td>
      </tr>
    <% }
    }%>
</table> <!-- 테이블 -->

<div class="row">
<div> <!-- 전체선택과 버튼들 -->
	<form class="form-horizontal">
     	<input type="button" class="btn btn-default" value="선택한 상품 삭제"/>
	</form>
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
        <td>9,999원</td>
        <td>0원</td>
        <td>9,999원</td>
        <td>10p</td>
      </tr>
    </tbody>
</table> <!-- 가격 테이블 -->

<!-- 주문 및 되돌아가기 -->
<div class="row">
	<div class="col-sm-8"></div>
	<div class="col-sm-2"> 
	<form action="/main.jsp">
    	<input type="submit" class="btn btn-default" value="쇼핑 계속하기"/>
    </form>
    </div>
    
    <div class="col-sm-2"> 
    <form action="/shop/Payment.jsp">
    	<input type="submit" class="btn btn-default" value="주문하기"/>
	</form>
	</div>
</div> <!-- 주문 및 되돌아가기 -->
</div> <!-- 끝 -->
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>