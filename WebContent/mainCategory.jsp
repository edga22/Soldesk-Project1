<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"
		 import="mgr.EventMgr"
		 import="java.text.NumberFormat" 
		 import="domain.Category"
         import="mgr.CategoryMgr"
         import="java.util.List" %>
		 
<%
	BookMgr bookmgr = new BookMgr();
    CategoryMgr catemgr = new CategoryMgr();
%>
<%	
	String cataPage = request.getParameter("cata");
	String codePage = request.getParameter("code");
	int categoriesSize = catemgr.listCategories().size();
	int cataCode = 0; //넘어온 1차분류 숫자변환
	int codeId = 0; //넘어온 카테고리아이디 숫자변환 
	
	if(cataPage != null){
	    if(cataPage.equals("all")) ;        
	    else cataCode = Integer.parseInt(cataPage); //넘어온 1차분류 숫자변환
	    if(codePage != null) codeId = Integer.parseInt(codePage); //넘어온 카테고리아이디 숫자변환
	}
%>

<title>분류페이지</title>

<jsp:include page="/main_navbar.jsp"/>

<style>
ul {
    margin: 0;
    padding: 0;
}

li {
	list-style: none;
}

a {
	padding: 0.3rem;
}

#align-bar {
	margin: 1rem 0;
	padding: 1rem 0;
	border-bottom: 1px solid black;
}

#categoryLine {
    border-bottom:1px solid #eee;
    margin-bottom:1.8rem;
}
#categoryLine h3 {
    margin:0 0 0.8rem 0;
    padding:0;
}
#categoryLine img{
    width:85px;
    height:auto;
    max-height:125px;
    padding-bottom:1.5rem;
}
</style>

	<!-- 상품 진열 1줄에 4개씩  -->
<div class="container">		
	<!-- 좌측 카테고리 메뉴바 -->
	
	<div class="row">
        <div class="col-md-2">
        <jsp:include page="/shop/categoryMenu.jsp"/>
		</div>
		<!--// 카테고리 -->
			
		<!-- result -->
		<div class="col-md-10" id="result">
		   <div class="row" id="align-bar">
		        <div class="col-md-1">
		            <label><input type="checkbox" name="all" value=""> 전체</label>
                </div>
				<div class="col-md-2 text-center">
					<a href="#">제목순</a>
				</div>
				<div class="col-md-2 text-center">
					<a href="#">저자순</a>
				</div>
				<div class="col-md-2 text-center">
					<a href="#">가격순</a>
				</div>
				<div class="col-md-2 text-center">
					<a href="#">출간일순</a>
				</div>				
				<div class="col-md-3 text-right">
				    리스트 갯수 : 
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
			Book[] books = bookmgr.getBooks();
		    EventMgr evmgr = new EventMgr();
		    //숫자1000자리 콤마
		    NumberFormat nf = NumberFormat.getNumberInstance();
		    
			for(Book book: books){
				int bookPoint = 0; //포인트 
				int bookPrice = 0; //등록된 책가격
                int bookdiscount = 0; //할인률
                int bookSalePrice = 0; //책 판매가
                int pointPer = 10; //포인트 % 100기준
                int discountPer = 100; //판매가 % 100기준
                double eventdiscount = 0.0; //이벤트할인 초기화
                int bookIdInt = book.getBookID(); //북아이디 숫자
                  
                eventdiscount = evmgr.getDiscountMult(bookIdInt);  //이벤트 할인
                bookPrice = book.getPrice(); //책가격
                //할인률 계산
                if(eventdiscount != 0){
                    bookSalePrice = (int)(bookPrice*eventdiscount); //이벤트 할인된 가격
                    bookdiscount = 100-(int)(eventdiscount*100); //할인률 %
                }else{
                    bookSalePrice = bookPrice*discountPer/100; //일반 할인된 가격         
                }
                bookPoint = bookSalePrice*pointPer/100; //포인트
                
                int cateInt = 0; //도서리스트 1차분류 숫자
    			int cateInt2 = 0; //도서리스트 2차분류 숫자
    			String cateName = ""; //도서리스트 1차분류 이름
    			String cateName2 = ""; //도서리스트 2차분류 이름
    			String cateSubject = ""; //도서리스트 1차분류 설명 
    			String cateSubject2 = ""; //도서리스트 2차분류 설명 
    			
                //카테고리 매칭
                for(Category result:catemgr.listCategoriesUse()){
            		if(book.getCategoryID() == result.getCategoryID()){
	                	cateInt = result.getCode1();
	            		cateInt2 = result.getCategoryID();
	            		cateName2 = result.getCategoryName();
	            		cateSubject2 = result.getCategorySubject();
	            		break;
            		}
            	}
    			
    			//1차 카테고리 매칭
    			for(Category result1:catemgr.listCategoriesCode1()){
    				if(cateInt == result1.getCode1()){
    					cateName = result1.getCategoryName();
	            		cateSubject = result1.getCategorySubject();
	            		break;
    				}
    			}
			%>
			<div class="row" id="categoryLine"> <!-- items -->
				<div class="col-md-1">
					<p><%=book.getBookID() %></p>
					<input type="checkbox" name="bookID" value="<%=book.getBookID() %>">
				</div>
				<div class="col-md-2">
					<a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>"><img src="<%=book.getImageID() %>"/></a>
				</div>
				<div class="col-md-7">
					<p style="margin:0.2rem 0;">
						[<%=cateInt %>][<%=cateInt2 %>][<%=cateName %>][<%=cateSubject %>][<%=cateName2 %>][<%=cateSubject2 %>]
					</p>
					<h3><a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>"><%=book.getBookName() %></a></h3>
					<p style="margin:0 0 0.2rem 0;">저자 :<%=book.getAuthor() %>  | 옮긴이 :<%=book.getAuthor() %> | 출판사 : <%=book.getPublisher() %></p>
					<ul>
						<li>정가: <%=nf.format(bookPrice) %>원 <i class="glyphicon glyphicon-arrow-right"></i>
						판매가: <%=nf.format(bookSalePrice) %>원<% if(bookdiscount != 0) out.print("("+bookdiscount+"%)"); %></li>
						<li>적립포인트 : <%=nf.format(bookPoint) %>P (<%=pointPer%>% 지급)P</li>						
					</ul>
				</div>
				<div class="col-md-2" style="vertical-align:middle;">
					<p><a class="btn btn-default" href="/shop/basket.jsp?bookID=<%=book.getBookID()%>">장바구니 추가</a></p>
					<p><a class="btn btn-default" href="/shop/payment.jsp?bookID=<%=book.getBookID()%>">바로 구매</a></p>
				</div>				
			</div>			
			<% } %>
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
