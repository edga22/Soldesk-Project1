<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"
		 import="domain.Category"%>
<%
BookMgr mymgr = new BookMgr();
String cataPage = request.getParameter("cata");
String cata1 = "";
String cata2 = "";
String cata3 = "";
String cata4 = "";
%>
<%
if(cataPage.equals("domestic")){
	cata1 = "in";
}else if(cataPage.equals("oversea")){   
	cata2 = "in";
}else if(cataPage.equals("ebook")){
	cata3 = "in";
}else{
	
}
%>
<style>
li {
	list-style: none;
}

a {
	padding: 0.3rem;
}

#categori {
	margin-top: 5rem;
}

#cate-side {
	margin-top: 2rem;
	background-color: white;
	border: 1px black solid;
}

#align-bar {
	margin: 1rem;
	padding: 1rem 0.3rem;
	border-bottom: 1px solid black;
}

#align-bar>.col-md-2 {
	width: 15%;
}

#align-bar>.col-md-offset-1 {
	margin-left: 5%;
}

.inSearch-group {
	padding-top: 1rem;
}

.cate-group {
	padding-top: 1rem;
}
</style>

<jsp:include page="/main_navbar.jsp"/>

	<!-- 상품 진열 1줄에 4개씩  -->
<div class="container">		
	<!-- 좌측 카테고리 메뉴바 -->
	
	<div class="row">
        <div class="col-md-2">
			<div class="panel-group" id="categori">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">
							<a data-toggle="collapse" data-parent="#categori" href="#menu1">국내도서</a>
						</h5>
					</div>
					<div id="menu1" class="panel-collapse collapse <%= cata1 %>">
						<div class="panel-body">
							<a href="/mainCategory.jsp?cata=domestic">교양</a><br> 
							<a href="/mainCategory.jsp?cata=domestic">소설</a><br> 
							<a href="/mainCategory.jsp?cata=domestic">전공서적</a><br>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">
							<a data-toggle="collapse" data-parent="#categori" href="#c2">외국도서</a>
						</h5>
					</div>
					<div id="c2" class="panel-collapse collapse <%= cata2 %>">
						<div class="panel-body">
							<a href="/mainCategory.jsp?cata=oversea">교양</a><br> 
							<a href="/mainCategory.jsp?cata=oversea">소설</a><br> 
							<a href="/mainCategory.jsp?cata=oversea">전공서적</a><br>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">
							<a data-toggle="collapse" data-parent="#categori" href="#c3">eBook</a>
						</h5>
					</div>
					<div id="c3" class="panel-collapse collapse <%= cata3 %>">
						<div class="panel-body">
							<a href="/mainCategory.jsp?cata=ebook">교양</a><br> 
							<a href="/mainCategory.jsp?cata=ebook">소설</a><br> 
							<a href="/mainCategory.jsp?cata=ebook">전공서적</a><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--// 카테고리 -->
			
		<!-- result -->
		<div class="col-md-10" id="result">
		<div class="row" id="align-bar">
				<div class="col-md-2 col-md-offset-1">
					<a href="#">제목순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<a href="#">저자순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<a href="#">가격순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<a href="#">출간일순</a>
				</div>
				<div class="col-md-2 col-md-offset-1">
					<select name="display_number" class="">
						<option value="25">25개</option>
						<option value="50">50개</option>
						<option value="100">100개</option>
					</select>
				</div>
			</div>
			<form>
			<button type="submit" class="btn btn-default">선택한것 찜하기</button><br>
			<%
				Book[] books = mymgr.getBooks();
					for(Book book: books){			
			%>
			<div class="row" style="margin-bottom: 1rem;"> <!-- items -->
				<div class="col-md-1">
					<p><%=book.getBookID() %></p>
					<input type="checkbox" name="bookID" value="<%=book.getBookID() %>">
				</div>
				<div class="col-md-2"><a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>"><img src="<%=book.getImageID() %>"></a></div>
				<div class="col-md-7">
					<h3><a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>"><%=book.getBookName() %></a></h3>
					<p>저자 :<%=book.getAuthor() %>  옮긴이 :<%=book.getAuthor() %>  출판사 : <%=book.getPublisher() %></p>
					<ul>
						<li><%=book.getPrice()*1.1 %> -> <%=book.getPrice()%></li>
						<li>적립포인트 : <%=book.getPrice()*0.1 %>%</li>
						<li>사은품 : 없음</li>
					</ul>
				</div>
				<div class="col-md-2">
					<p><a class="btn btn-default" href="/shop/basket.jsp?bookID=<%=book.getBookID()%>">장바구니 추가</a></p>
					<p><a class="btn btn-default" href="/shop/payment.jsp?bookID=<%=book.getBookID()%>">바로 구매</a></p>
				</div>
			</div>
			<%} %>
			</form>
		</div>
	    <!--// result -->
	    <!-- 하단 페이지 바 -->
		<div align="center">
			<ul class="pagination">
				<li><a href="#">◁</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">▷</a></li>
			</ul>
		</div>
    </div>	
</div>	

<jsp:include page="/main_foot.jsp"></jsp:include>
