<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"
		 import="mgr.BestsellerMgr"
         import="domain.BestSeller"
         import="java.text.NumberFormat"%>

<%
BookMgr mymgr = new BookMgr();
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


%>
<title><%=book.getBookName()%></title>

<link rel="stylesheet" href="/main.css">

<style>
#tb1 th{
    text-align:center;
}
#detail {
    line-height: 1.8;
    padding:1rem 0;
}
#detail2 {
    margin:1rem 0;
    padding:1rem 0;
    border-top:1px solid gray;
    border-bottom:1px solid gray;
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
        <div class="col-md-2" style="margin-top:-2rem;">
            <jsp:include page="/shop/categoryMenu.jsp"/>
        </div>
        <!--// 카테고리 -->
	        
	    <!-- result -->
	    <div class="col-md-7" id="result" style="margin-top:3rem;">
	        <div class="panel panel-default">
				<div class="panel-heading">
				    <h3><%=book.getBookName()%></h3>
				</div>
				<div class="row">
				    <div class="col-md-12">
					    <div class="row" id="detail">
		                    <div class="col-md-5">
		                        <img src="<%=book.getImageID()%>" style="width:18rem; height:26rem; margin-left:3rem; margin-bottom:5rem;"/>
		                    </div>
		                    <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
				                        <%=authorList %><br>
				                        출판사 : <%=book.getPublisher() %><br>
				                        금  액 : <%=nf.format(book.getPrice()) %>원<br>   
				                        적  립 : <%=nf.format((int)(book.getPrice()*0.1)) %>point<br>   
				                        재  고 : <%=book.getStock() %>권<br> 
				                        출간일 : <%=book.getPublishDate() %>
			                        </div>
			                    </div>
		                        <form >
                                <div class="col-md-12" id="detail2">
			                        배송료 : 2,500원(1만원 이상시 무료)<br>
			                        수령 예상일 : 온라인 주문시 2일 소요<br>
			                                 (오프라인 방문시 당일 수령가능)<br>
			                        <input type="hidden" name="bookID" value="<%=bookID%>">
			                        <label>수량 : <input type="number" name="cnt" style="width:10rem;" value="1"></label>
			                    </div>
			                    <div class="col-md-12" style="text-align:center;margin-bottom:2rem;">
				                     <div class="row">
				                        <button type="submit" formaction="/shop/payment.jsp" class="btn btn-danger glyphicon glyphicon-usd">즉시구매</button>
				                        <button type="submit" formaction="/shop/basket.jsp" class="btn btn-warning glyphicon glyphicon-gift">찜하기</button>
			                         </div>
			                    </div>
				                </form>
				            </div>
			            </div>
	                </div>
	            </div>
                <div class="row">               
                    <div class="col-md-12">
                        <table id="tb1" class="table table-condensed table-striped">
                            <tr><th>목차</th></tr>
                            <tr>
                                <td>
		                            <%if(book.getSubtitle() != null){ %>
		                              <%=book.getSubtitle() %>
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
                        </table><br><br>
                    </div>
                </div>
			</div>
		</div>  
	    <div class="col-md-3" style="margin-top:3rem;">
	        <div class="row">
	            <div class="col-md-12">
	                <div id="ad2">
	                    <a href="http://localhost/inven/bookDetail.jsp?bookID=218">
	                        <img alt="ad2" src="/img/main/170320_ebook.jpg" />
	                    </a>
	                </div>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-md-12">
	                <div class="best10">
	                    <div class="title">베스트셀러 <font color="#0275d8">TOP10</font></div>
	                    <ul class="best10_text">
	                    <%
	                        BestsellerMgr mgr=new BestsellerMgr();
	                        BestSeller[] bestseller=mgr.getBestseller();
	                        
	                        String monthAgo=mgr.getMonthAgoDate();
	                        
	                        for(int k=0;k<10;k++){
	                            int bookIdInt = bestseller[k].getBookID();
	                            String bookIdLink = "/inven/bookDetail.jsp?bookID="+bookIdInt;
	                            String bookNamestr = bestseller[k].getBook().getBookName(); 
	                     
	                            if(k == 0){
	                     %>
	                        <li>
	                            <div class="best10_1">
	                                <div class="number active"><%=k+1 %></div>
	                                <div class="best10_img">                          
	                                    <a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기">
	                                    <img src="<%=bestseller[k].getBook().getImageID()%>" style="width:65px;height:auto;"/>
	                                    </a>
	                                    <a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a>
	                                </div>
	                            </div>                        
	                        </li>
	                        <%  }else{ %>
	                        <li><div class="number"><%=k+1 %></div><a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a></li>
	                     <% }
	                     } %>    
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</div>

<jsp:include page="/main_foot.jsp"></jsp:include>
