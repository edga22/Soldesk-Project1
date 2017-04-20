<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Category"
         import="mgr.CategoryMgr"
         import="domain.Book"
         import="mgr.BookMgr"
         import="mgr.EventMgr"
         import="java.text.NumberFormat"
         import="java.util.List" 
         import="mgr.BestsellerMgr"
         import="domain.BestSeller"
         import="dao.DbBasedBestsellerDao"%>

<!-- 메인 화면 시작 -->   
<section id="section">
    <div class="row">
        <div class="col-md-12">
            <div id="myCarousel" class="panel panel-default" onmouseleave="startSlides()">
                <div class="slideshow-container panel-body">                                      
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(1)">                     
                        <img alt="slide-MD초이스1" src="./img/main/170228_book01.png" />
                        <img alt="slide-MD초이스2" src="./img/main/170228_book02.png" />
                        <img alt="slide-MD초이스3" src="./img/main/170228_book03.png" />
                        <img alt="slide-MD초이스4" src="./img/main/170228_book04.png" />
                    </div>
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(2)">                     
                        <img alt="slide-신간소개1" src="./img/main/170306_ad05.png" />
                        <img alt="slide-신간소개2" src="./img/main/170306_ad06.png" />
                        <img alt="slide-신간소개3" src="./img/main/170306_ad07.png" />
                        <img alt="slide-신간소개4" src="./img/main/170306_ad08.png" />
                    </div>
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(3)">                     
                        <img alt="slide-이벤트도서1" src="./img/main/170307_book01.png" />
                        <img alt="slide-이벤트도서2" src="./img/main/170307_book02.png" />
                        <img alt="slide-이벤트도서3" src="./img/main/170307_book03.png" />
                        <img alt="slide-이벤트도서4" src="./img/main/170307_book04.png" />
                    </div>
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(4)">                        
                        <img alt="slide-화제의 책1" src="./img/main/170310_ad01.png" />
                        <img alt="slide-화제의 책2" src="./img/main/170310_ad02.png" />
                        <img alt="slide-화제의 책3" src="./img/main/170310_ad03.png" />
                        <img alt="slide-화제의 책4" src="./img/main/170310_ad04.png" />
                    </div>
                    <div class="mySlides fade slide-3 " onmouseenter="stopSlides(5)">                       
                        <img alt="slide-e-Book1" src="./img/main/161207_payback2.jpg" />
                        <img alt="slide-bar" class="eb1" src="./img/main/ev_line.png" />
                        <img alt="slide-e-Book2" src="./img/main/170302b_10yrent.jpg" />
                        <img alt="slide-bar" class="eb1" src="./img/main/ev_line.png" />
                        <img alt="slide-e-Book3" src="./img/main/170307_ebookgoods.jpg" />
                    </div>               
                </div>
                <div class="col-md-12 text-center panel-footer" id="slideshow_list">
                    <ul class="slideshow_list">
                       <li>
                           <span class="dot" onmouseenter="stopSlides(1)">MD 초이스</span><span class="divider"></span>
                       </li>
                       <li>
                           <span class="dot" onmouseenter="stopSlides(2)">신간소개</span><span class="divider"></span>
                       </li>
                       <li>
                           <span class="dot" onmouseenter="stopSlides(3)">국내도서</span><span class="divider"></span>
                       </li>
                       <li>
                           <span class="dot" onmouseenter="stopSlides(4)">해외도서</span><span class="divider"></span>
                       </li>
                       <li>
                           <span class="dot" onmouseenter="stopSlides(5)">e-Book</span><span class="divider"></span>
                       </li>
                    </ul>
                </div>              
            </div>
       </div>
    </div>   
    <div class="row">
        <div class="col-md-2">
            <div class="list-group">
                <strong class="list-group-item sub" style=""><a href="/mainCategory.jsp?cata=all" class="sub">전체도서</a></strong>
		        <%
		        CategoryMgr catemgr = new CategoryMgr();
		        BookMgr bookmgr = new BookMgr();
		        NumberFormat nf = NumberFormat.getNumberInstance();  //숫자1000자리 콤마
		        int i = 0;
		        
		        for(Category result:catemgr.listCategoriesUse()){
		            String cateMenuStr = "";		            
		            
		            if(result.getCode2() == 0){  
		                if(i != 0){ %>
                    </ul>
                </div>                     
                 <% } %>                  
                <div class="list-group-item">
                    <ul class="main_lmenu">
                        <li class="title"><a href="/mainCategory.jsp?cata=<%=result.getCode1()%>"><%=result.getCategoryName() %></a></li>
                <% i++;                
                }else{ %>    
                        <li><a href="/mainCategory.jsp?cata=<%=result.getCode1()%>&code=<%=result.getCategoryID()%>"><%=result.getCategoryName() %></a></li>    
		         <% }
		        } %>
                    </ul>
                </div>             
            </div>         
	    </div>
	    <div class="col-md-7">
            <div class="row">
                <div class="col-md-12 main_book_titel">이달의 추천도서</div>
                <div class="col-md-3 text-center main_book_info">
                    <p class="main_book_img">
                       <img alt="이달의추천도서1" src="./img/main/k272536082_1.jpg" />
                    </p>
                    <p>고발<br>
                       <span>반디 지음 / 다산책방</span>
                    </p>
                </div>
                <div class="col-md-3 text-center main_book_info">
                    <p class="main_book_img">
                        <img alt="이달의추천도서2" src="./img/main/8950968983_1.jpg" />
                    </p>
                    <p>고슴도치의 소원<br>
                       <span>톤 텔레헨 지음 / arte(아르테)</span>
                    </p>
                </div>
                <div class="col-md-3 text-center main_book_info">
                    <p class="main_book_img">
                        <img alt="이달의추천도서3" src="./img/main/8934976837_1.jpg" />
                    </p>
                    <p>꿈은 토리노를 달리고<br>
                       <span>히가시노 게이고 지음 / 비채</span>
                    </p>
                </div>
                <div class="col-md-3 text-center main_book_info">
                    <p class="main_book_img">
                        <img alt="이달의추천도서4" src="./img/main/k842536287_2.jpg" />
                    </p>
                    <p>페미니스트 유토피아<br>
                       <span>리아 페이- 베르퀴스트·정희진 외 62인 지음 / 휴머니스트</span>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 main_book_titel">이달의 신간</div>
                <div class="col-md-6 main_book_info2">
                    <img alt="화제의책소식1" src="./img/main/8949112752_1.jpg" />
                    <div class="main_book_info">
                        <p>하늘을 나는 마법약<br>
                            <span>칼데콧 상 2회, 뉴베리 상 수상 작가 윌리엄 스타이그의 신나는 상상</span>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 main_book_info2">                
                    <img alt="화제의책소식2" src="./img/main/8956253455_2.jpg" />                
                    <div class="main_book_info">
                        <p>길 위의 인생<br>
                            <span>벨 훅스, 엠마 왓슨 추천. 글로리아 스타이넘 '여전히 도전 중'</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 main_book_info2">
                    <img alt="화제의책소식3" src="./img/main/8960863262_1.jpg" />
                    <div class="main_book_info">
                        <p>오래된 생각<br>
                            <span>'노무현의 필사' 윤태영, 삶과 죽음을 가로지는 이야기</span>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 main_book_info2">
                    <img alt="화제의책소식4" src="./img/main/k362536482_1.jpg" />
                    <div class="main_book_info">
                        <p>처음 늙어보는 사람들에게<br>
                            <span>아툴 가완디 강력 추천작, 남들보다 일찍 늙어가며 깨달은 것들</span>
                        </p>
                    </div>
                </div>
            </div>  
        <%
        i = 0;
        for(Category result1:catemgr.listCategoriesCode1()){
        	int cataInt = 0;
            
            if(result1.getCode2() == 0){  
                if(i != 0){ %>                
            </div>   
             <% } %>
            <div class="row">
                <div class="col-md-12 main_book_titel"><%=result1.getCategoryName() %></div>                    
            <% i++;
                cataInt = result1.getCode1();
                int j = 0;
                for(Book book: bookmgr.getBooks()){
                    int bookIdInt = book.getBookID(); //북아이디 숫자
                    String author = book.getAuthor(); //저자
                    String authorList; //저자 / 번역가
                    int idx = author.indexOf(",");
			       
                    if(idx != -1){
                        String author1 = author.substring(0, idx);
	                    // 뒷부분을 추출
	                    // 아래 substring은 @ 바로 뒷부분인 n부터 추출된다.
	                    String author2 = author.substring(idx+1);
	                    authorList = author1+" 지음";
	                }else  authorList = author+" 지음";
                    
                    int cateInt = 0; //도서리스트 1차분류 숫자
                    cateInt = catemgr.findCategory(book.getCategoryID()).getCode1();
	                //리스트 출력
	                
	                if(cataInt == cateInt){
	                	if(j < 4){
                %>
                <div class="col-md-3 text-center main_book_info">
                    <p class="main_book_img">
                        <a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>" title="<%=book.getBookName() %> 바로가기"><img src="<%=book.getImageID() %>" alt="<%=book.getBookName() %>"/></a>
                    </p>
                    <p class="main_book_txt"><a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>" title="<%=book.getBookName() %> 바로가기"><%=book.getBookName() %></a>
                       <a href="/inven/bookDetail.jsp?bookID=<%=book.getBookID()%>" title="<%=book.getBookName() %> 새창으로보기" target="_blank">
                       <i class="glyphicon glyphicon-new-window" style="font-size:1.3rem;color:#555;margin-left:0.5rem"></i></a><br>
                       <span><%=authorList %> / <%=book.getPublisher() %> <%=j %></span>
                    </p>
                </div>
                
         <%     j++;
	                	}
                    }  
			    }
		    }
        } %>
            </div>
        </div>
                <div class="col-md-3">
            <div class="row">
                <div class="col-md-12">
                    <div id="ad2">
                        <img alt="ad2" src="./img/main/170320_ebook.jpg" />
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
						    DbBasedBestsellerDao dao=new DbBasedBestsellerDao();
						    BestSeller[] bestseller=dao.getBestseller();
						    
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
</section>
<script>
var t;
var slideIndex = 0;
var slideStart = true;
showSlides();


if(slideStart != true) { 
    showSlides(slideIndex);
}

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";
       dots[i].className = dots[i].className.replace(" active", "");
    }
    if (slideStart == true){
	    slideIndex++;    
	    if (slideIndex> slides.length) {slideIndex = 1}
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    
    if (slideStart == true){
       t = setTimeout(showSlides, 3000);
    }else{
       clearTimeout(showSlides);
    }
}

function stopSlides(n) {
	slideStart = false;
	clearTimeout(showSlides);
	showSlides(slideIndex = n);
}

function startSlides() {
	slideStart = true;
	t;
}
</script>
<!-- 메인 화면 끝 -->
