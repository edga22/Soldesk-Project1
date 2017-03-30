<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                        <div class="text">MD 초이스</div>
                    </div>
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(2)">                     
                        <img alt="slide-신간소개1" src="./img/main/170306_ad05.png" />
                        <img alt="slide-신간소개2" src="./img/main/170306_ad06.png" />
                        <img alt="slide-신간소개3" src="./img/main/170306_ad07.png" />
                        <img alt="slide-신간소개4" src="./img/main/170306_ad08.png" />
                        <div class="text">신간소개</div>
                    </div>
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(3)">                     
                        <img alt="slide-이벤트도서1" src="./img/main/170307_book01.png" />
                        <img alt="slide-이벤트도서2" src="./img/main/170307_book02.png" />
                        <img alt="slide-이벤트도서3" src="./img/main/170307_book03.png" />
                        <img alt="slide-이벤트도서4" src="./img/main/170307_book04.png" />
                        <div class="text">이벤트도서</div>
                    </div>
                    <div class="mySlides fade slide-4" onmouseenter="stopSlides(4)">                        
                        <img alt="slide-화제의 책1" src="./img/main/170310_ad01.png" />
                        <img alt="slide-화제의 책2" src="./img/main/170310_ad02.png" />
                        <img alt="slide-화제의 책3" src="./img/main/170310_ad03.png" />
                        <img alt="slide-화제의 책4" src="./img/main/170310_ad04.png" />
                        <div class="text">화제의 책</div>
                    </div>
                    <div class="mySlides fade slide-3 " onmouseenter="stopSlides(5)">                       
                        <img alt="slide-e-Book1" src="./img/main/161207_payback2.jpg" />
                        <img alt="slide-bar" class="eb1" src="./img/main/ev_line.png" />
                        <img alt="slide-e-Book2" src="./img/main/170302b_10yrent.jpg" />
                        <img alt="slide-bar" class="eb1" src="./img/main/ev_line.png" />
                        <img alt="slide-e-Book3" src="./img/main/170307_ebookgoods.jpg" />
                        <div class="text">e-Book</div>
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
                           <span class="dot" onmouseenter="stopSlides(3)">이벤트도서</span><span class="divider"></span>
                       </li>
                       <li>
                           <span class="dot" onmouseenter="stopSlides(4)">화제의 책</span><span class="divider"></span>
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
                <a href="#" class="list-group-item"><strong>전체카타고리</strong></a>
            <div class="list-group-item">
                <ul class="main_lmenu">
                    <li class="title">국내도서</li>
                    <li><a href="#" class="list-group">교양</a></li>
                    <li><a href="#" class="list-group">소설</a></li>
                    <li><a href="#" class="list-group">전공도서</a></li>                    
                </ul>
            </div>
            <div class="list-group-item">
                <ul class="main_lmenu">
                    <li class="title">외국도서</li>
                    <li><a href="#" class="list-group">교양</a></li>
                    <li><a href="#" class="list-group">소설</a></li>
                    <li><a href="#" class="list-group">전공도서</a></li>                    
                </ul>
            </div>
            <div class="list-group-item">
                <ul class="main_lmenu">
                    <li class="title">전자책</li>
                    <li><a href="#" class="list-group">교양</a></li>
                    <li><a href="#" class="list-group">소설</a></li>
                    <li><a href="#" class="list-group">전공도서</a></li>
                </ul>
            </div>            
        </div>
    </div>
    <div class="col-md-7">
        <div class="row">
            <div class="col-md-12 main_book_titel">MD 초이스</div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="MD 초이스1" src="./img/main/8956605815_2.jpg" />
                </p>
                <p>작은 친구들 1<br>
                <span>어째서 진실은 밝혀져야 하는지</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="MD 초이스2" src="./img/main/8937434067_1.jpg" />
                </p>
                <p>어떻게 질문할 것인가<br>
                <span>뇌과학자 김대식 교수의 질문 찾는 법</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="MD 초이스3" src="./img/main/k512536684_1.jpg" />
                </p>
                <p>여중생A 1~3 세트 - 전3권<br>
                <span>그냥 내가 나인게 잘못인가요?</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="MD 초이스4" src="./img/main/894916194x_1.jpg" />
                </p>
                <p>변신돼지<br>
                <span>제6회 비룡소 문학상 대상 수상작</span>
                </p>
            </div>
        </div>
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
            <div class="col-md-12 main_book_titel">화제의 책 소식</div>
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
        <div class="row">
            <div class="col-md-12 main_book_titel">이달의 이벤트도서</div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의이벤트도서1" src="./img/main/k272536082_1.jpg" />
                </p>
                <p>고발<br>
                <span>반디 지음 / 다산책방</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의이벤트도서2" src="./img/main/8950968983_1.jpg" />
                </p>
                <p>고슴도치의 소원<br>
                <span>톤 텔레헨 지음 / arte(아르테)</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의이벤트도서3" src="./img/main/8934976837_1.jpg" />
                </p>
                <p>꿈은 토리노를 달리고<br>
                <span>히가시노 게이고 지음 / 비채</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의이벤트도서4" src="./img/main/k842536287_2.jpg" />
                </p>
                <p>페미니스트 유토피아<br>
                <span>리아 페이- 베르퀴스트·정희진 외 62인 지음 / 휴머니스트</span>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 main_book_titel">이달의 새로운 도서</div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의새로운도서1" src="./img/main/k272536082_1.jpg" />
                </p>
                <p>고발<br>
                <span>반디 지음 / 다산책방</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의새로운도서2" src="./img/main/8950968983_1.jpg" />
                </p>
                <p>고슴도치의 소원<br>
                <span>톤 텔레헨 지음 / arte(아르테)</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의새로운도서3" src="./img/main/8934976837_1.jpg" />
                </p>
                <p>꿈은 토리노를 달리고<br>
                <span>히가시노 게이고 지음 / 비채</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의새로운도서4" src="./img/main/k842536287_2.jpg" />
                </p>
                <p>페미니스트 유토피아<br>
                <span>리아 페이- 베르퀴스트·정희진 외 62인 지음 / 휴머니스트</span>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 main_book_titel">이달의 eBook</div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의eBook1" src="./img/main/k272536082_1.jpg" />
                </p>
                <p>고발<br>
                <span>반디 지음 / 다산책방</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의eBook2" src="./img/main/8950968983_1.jpg" />
                </p>
                <p>고슴도치의 소원<br>
                <span>톤 텔레헨 지음 / arte(아르테)</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의eBook3" src="./img/main/8934976837_1.jpg" />
                </p>
                <p>꿈은 토리노를 달리고<br>
                <span>히가시노 게이고 지음 / 비채</span>
                </p>
            </div>
            <div class="col-md-3 text-center main_book_info">
                <p class="main_book_img">
                    <img alt="이달의eBook4" src="./img/main/k842536287_2.jpg" />
                </p>
                <p>페미니스트 유토피아<br>
                <span>리아 페이- 베르퀴스트·정희진 외 62인 지음 / 휴머니스트</span>
                </p>
            </div>
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
                            <li>
                                <div class="best10_1">
                                    <div class="number active">1</div>
                                    <div class="best10_img">                          
                                        <img alt="ad2" src="./img/main/8971998016_1.jpg" />
                                        국가란 무엇인가 - 2017 개정신판<br />유시민
                                    </div>
                                </div>                        
                            </li>
                            <li><div class="number">2</div>2017 선재국어 나침판 실전...</li>
                            <li><div class="number">3</div>자존감 수업</li>
                            <li><div class="number">4</div>나쁜 페미니스트</li>
                            <li><div class="number">5</div>우리에겐 언어가 필요하다</li>
                            <li><div class="number">6</div>유혹하는 글쓰기 (특별판)</li>
                            <li><div class="number">7</div>언어의 온도</li>
                            <li><div class="number">8</div>2017 민준호 사회 실전동형...</li>
                            <li><div class="number">9</div>82년생 김지영</li>
                            <li><div class="number">10</div>2017 이동기 영어 실전동형...</li>
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
