<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"
         import="java.text.NumberFormat"
         import="domain.Category"
         import="mgr.CategoryMgr"
         import="java.util.List"%>

<%
BookMgr mymgr = new BookMgr();
CategoryMgr catemgr = new CategoryMgr();

int bookID = 1;
String tmp = request.getParameter("bookID");
if(tmp == null || tmp.equals("")){
}else{
	bookID = Integer.parseInt(tmp);
	}
Book book = mymgr.getBook(bookID);
//숫자1000자리 콤마
NumberFormat nf = NumberFormat.getNumberInstance();

String author = book.getAuthor(); //저자
String authorList; //저자 / 번역가
//String[] getAuthor = author.split(",");
// ,를 기준으로 문자열을 추출할 것이다. 먼저 , 의 인덱스를 찾는다 
int idx = author.indexOf(","); 
// , 앞부분을 추출. substring은 첫번째 지정한 인덱스는 포함하지 않는다.
if(idx != -1){
    String author1 = author.substring(0, idx);
    // 뒷부분을 추출. 아래 substring은 , 바로 뒷부분인 n부터 추출된다.
    String author2 = author.substring(idx+1);
    authorList = "지은이 : "+author1+" 저<br> 옮긴이 : "+author2+" 역";
}else  authorList = "지은이 : "+author+" 저";

int cateInt = 0; //도서리스트 1차분류 숫자
int cateInt2 = 0; //도서리스트 2차분류 숫자
String cateName = ""; //도서리스트 1차분류 이름
String cateName2 = ""; //도서리스트 2차분류 이름
String cateSubject = ""; //도서리스트 1차분류 설명 
String cateSubject2 = ""; //도서리스트 2차분류 설명 

//카테고리 매칭
//북 아이디에서 카테고리 아이디를 찾아 해당 카테고리 아이디의 정보를 찾는다. 
Category cate = catemgr.findCategory(book.getCategoryID());
cateInt = cate.getCode1();
cateInt2 = cate.getCategoryID();
cateName2= cate.getCategoryName();
cateSubject2= cate.getCategorySubject();
//1차 카테고리 번호로 1차 카테고리 정보를 찾는다.
Category cate2 = catemgr.findCode1(cateInt);
cateName = cate2.getCategoryName();
cateSubject = cate2.getCategorySubject();
%>

<title><%=book.getBookName()%></title>

<link rel="stylesheet" href="/main.css">

<style>
#detail {
    line-height: 1.8;
    padding:1rem 0;
    text-align:center;
}
#detail span {
    color:#999;
    font-size:1.5rem;
}
#detail img {
    width:18rem;
    height:26rem;
    margin-bottom:5rem;
}
#detail1 {
    padding:0 0 1.5rem 0;
    border-bottom:1px solid #ccc;
    text-align:left;
}
#detail2 {
    padding:1.5rem 0 1rem 0;
    border-bottom:1px solid #ccc;
    text-align:left;
}

#tb1 th{
    text-align:center;
}
#tb1 td {
    padding:2rem;
    line-height: 1.8;
}
</style>

<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container" id="BD">
    <!-- 좌측 카테고리 메뉴바 -->
    <div class="row">
        <div class="col-md-2 col-sm-3" style="margin-top:-2rem;">
            <jsp:include page="/shop/categoryMenu.jsp"/>
        </div>
        <!--// 카테고리 -->
	        
	    <!-- result -->
	    <div class="col-md-7 col-sm-10" id="result" style="margin-top:3rem;">
	        <div class="panel panel-default">
				<div class="panel-heading">
				    <h4><%=book.getBookName()%></h4>
				    <%if(book.getSubtitle() != null){ %>
                    - <%=book.getSubtitle() %>
                    <% } %>
				</div>
				<div class="panel-body">
				    <div class="col-sm-12">
					    <div class="row" id="detail">
		                    <div class="col-sm-6">
		                        <span>[<%=cateName %>][<%=cateName2 %>]</span>
		                        <img src="<%=book.getImageID()%>" onerror="ImgError(this)"/>
		                    </div>
		                    <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-12" id="detail1">
				                        <%=authorList %><br>
				                        출판사 : <%=book.getPublisher() %><br>
				                        금  액 : <%=nf.format(book.getPrice()) %>원<br>   
				                        적  립 : <%=nf.format((int)(book.getPrice()*0.1)) %>point<br>   
				                        재  고 : <%=book.getStock() %>권<br> 
				                        출간일 : <%=book.getPublishDate() %>
			                        </div>
			                    </div>
			                    <form >
			                    <div class="row">			                    
	                                <div class="col-sm-12" id="detail2">
				                        배송료 : 2,500원(1만원 이상시 무료)<br>
				                        수령 예상일 : 온라인 주문시 2일 소요<br>
				                                 (오프라인 방문시 당일 수령가능)<br>
				                        <input type="hidden" name="bookID" value="<%=bookID%>">
				                        <label>수량 : <input type="number" name="cnt" min="1" style="width:5rem;text-align:center;" value="1">권</label>
				                    </div>
				                </div>
				                <div class="row">    
				                    <div class="col-sm-12" style="text-align:center;margin-top:2rem;">
				                        <button type="submit" formaction="/shop/payment.jsp" class="btn btn-danger glyphicon glyphicon-usd"> 즉시구매</button>
				                        <button type="submit" formaction="/shop/basket.jsp" class="btn btn-warning glyphicon glyphicon-gift"> 찜하기</button>
				                    </div>
					            </div>
					           </form>
				            </div>
			            </div>
	                </div>
	            </div>
                <div class="row">               
                    <div class="col-sm-12">
                        <table id="tb1" class="table table-condensed table-striped">
                            <tr><th>목차</th></tr>
                            <tr>
                                <td>
		                            <%if(book.getContents() != null){ %>
		                              <%=book.getContents() %>
		                            <% }else{ %>
		                              이 책은 목차가 없습니다.
		                            <% } %>
                                </td>
                            </tr>
                            <tr><th>내용</th></tr>
                            <tr>
                                <td>
                                    <%if(book.getDescription() != null){ %>
                                        <%=book.getDescription() %>
                                    <% }else{ %>
                                        이 책은 내용이 없습니다.
                                    <% } %>
                                </td>
                            </tr>
                        </table><br>
                    </div>
                </div>
			</div>
		</div>  
	    <div class="col-md-3 hidden-sm hidden-xs" style="margin-top:3rem;" id="bestDiv">
            <jsp:include page="/leftBestseller.jsp"/>	      
	    </div>
	</div>
</div>

<jsp:include page="/main_foot.jsp"></jsp:include>
