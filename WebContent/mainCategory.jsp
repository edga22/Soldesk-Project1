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
	
/* 	if(cateResult != null && cateResult.length > 0){
	    /* 정렬방식 order
	    0 : 출시일순 (기본값)
	    1 : 제목순
	    2 : 저자순
	    3 : 가격순
	    */
	    /*
	    BookSortMgr sortMgr = new BookSortMgr();
	    switch(order){
	    case 0:
	        scResult = sortMgr.toArray(sortMgr.dateSort(sortMgr.toList(scResult)));
	        break;
	    case 1:
	        scResult = sortMgr.toArray(sortMgr.nameSort(sortMgr.toList(scResult)));
	        break;
	    case 2:
	        scResult = sortMgr.toArray(sortMgr.authorSort(sortMgr.toList(scResult)));
	        break;
	    case 3:
	        scResult = sortMgr.toArray(sortMgr.priceSort(sortMgr.toList(scResult)));
	        break;
	    }
	    
	    CategoryCounter cCnter = new CategoryCounter();
	    domesticCnt = cCnter.code1Counter(scResult, 10);
	    overseaCnt = cCnter.code1Counter(scResult, 20);
	    ebookCnt = cCnter.code1Counter(scResult, 30);
	} */
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
    margin:0.1rem 0 0.5rem 0;
    padding:0;
}
#categoryLine img{
    width:85px;
    height:auto;
    max-height:125px;
    padding-bottom:1.5rem;
    float: left;
}
#categoryLine .number{
    float: left;
    width:20px;
    height:16px;
    margin-top:2rem;
    margin-right:2rem;
    color: white;    
    text-align: center;
    font-size:1.2rem;
    background-color: #bbb;    
    border-radius: 3px;
}
</style>
<script type="text/javascript">
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
});
</script>
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
				<div class="col-md-2 text-right">
                    <label><input type="checkbox" id="checkall" name="all" value=""> 전체</label>
                </div>				
				<div class="col-md-2 text-right">				     
					<select name="display_number" class="">
						<option value="10">10개</option>
						<option value="20">20개</option>
						<option value="30">30개</option>
					</select>
				</div>
			</div>
			<form action="/shop/basketAddValues.jsp">
			<button type="submit" class="btn btn-default">선택한것 찜하기</button><br>
			<%
			Book[] books = bookmgr.getBooks();
		    EventMgr evmgr = new EventMgr();
		    //숫자1000자리 콤마
		    NumberFormat nf = NumberFormat.getNumberInstance();
		    int i = 0;
		    int j = 1;
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
                String author = book.getAuthor(); //저자
                String authorList; //저자 / 번역가
                //String[] getAuthor = author.split(",");
                // ,를 기준으로 문자열을 추출할 것이다.
                // 먼저 , 의 인덱스를 찾는다 
                int idx = author.indexOf(","); 
                // , 앞부분을 추출
                // substring은 첫번째 지정한 인덱스는 포함하지 않는다.
                // 아래의 경우는 첫번째 문자열인 a 부터 추출된다.
                if(idx != -1){
	                String author1 = author.substring(0, idx);
	                // 뒷부분을 추출
	                // 아래 substring은 @ 바로 뒷부분인 n부터 추출된다.
	                String author2 = author.substring(idx+1);
	                
	                authorList = author1+" 저 / "+author2+" 역";
	                
                }else  authorList = author+" 저";
                
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
    			i++;
    			
    			 // if(codeId == cateInt2){
    			     if(cataCode == cateInt){
			%>
			<div class="row" id="categoryLine"> <!-- items -->
				<div class="col-md-2">
				    <div class="number"><%=j %></div>										
					<a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>"><img src="<%=book.getImageID() %>"/></a>
				</div>
				<div class="col-md-7">
					<p style="margin:0.2rem 0;">
						[<%=cateInt %>][<%=cateInt2 %>][<%=cateName %>][<%=cateSubject %>][<%=cateName2 %>][<%=cateSubject2 %>]
					</p>
					<h4>
					   <a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>" title="<%=book.getBookName() %> 바로가기"><%=book.getBookName() %></a>
					   <a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>" title="<%=book.getBookName() %> 새창으로보기" target="_blank">
                       <i class="glyphicon glyphicon-new-window" style="font-size:1.5rem;color:#555;margin-left:1rem"></i></a>
					</h4>
					<p style="margin:0 0 0.2rem 0;"><%=authorList %> | <%=book.getPublisher() %> | <%=book.getPublishDate() %></p>
					<ul>
						<li>정가: <%=nf.format(bookPrice) %>원 <i class="glyphicon glyphicon-arrow-right"></i>
						판매가: <%=nf.format(bookSalePrice) %>원<% if(bookdiscount != 0) out.print("("+bookdiscount+"%)"); %></li>
						<li>적립포인트 : <%=nf.format(bookPoint) %>P (<%=pointPer%>% 지급)P</li>						
					</ul>
				</div>
				<div class="col-md-1">
                    <input type="checkbox" name="bookID" value="<%=book.getBookID() %>">
                </div>
				<div class="col-md-2" style="vertical-align:middle;">
					<p><a class="btn btn-default" href="/shop/basketAddValues.jsp?bookID=<%=book.getBookID()%>">장바구니 추가</a></p>
					<p><a class="btn btn-default" href="/shop/payment.jsp?bookID=<%=book.getBookID()%>">바로 구매</a></p>
				</div>				
			</div>			
			<%
			   j++;
			   }
    			  
			}
			%>
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
