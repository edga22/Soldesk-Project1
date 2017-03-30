<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 공통 하단 -->
<footer id="footer">
    <div class="row">
        <div class="col-md-12">
            <div class="footer_line"></div>
            <div class="footer_header">
                <ul class="breadcrumb">
                   <li>
                       <a href="/sign/instroCop.jsp">회사소개</a>                   
                   </li>
                   <li>
                       <a href="/sign/accessTerm.jsp">이용약관</a>                   
                   </li>
                   <li>
                       <a href="#">개인정보취급방침</a> 
                   </li>
                   <li>
                       <a href="#">고객센터</a> 
                   </li>
                   <li>
                       <a href="/admin/index.jsp">판매자 매니저</a> 
                   </li>                                
                   <li style="float:right">
                       <a href="#">▲TOP</a>
                   </li>
               </ul>                            
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 text-center">
            <a class="navbar-brand" href="#"><span class="glyphicon">&#xe043;</span><font>&#38;</font>cafe<br><span style="font-size:2rem;">북앤카페</span></a>
        </div>
        <div class="col-md-5">
            <div style="width:50%;float: left;">   
                <address>
                    <strong>Book&#38;Cafe, Inc.</strong><br /> 대표이사 : 윤광재<br /> <abbr title="Phone">전화상담 : 02) 1234-5678</abbr>                   
                    <div style="position: absolute;width:100%;clear: left;margin:0;">서울 종로구 종로12길 15 코아빌딩1 5층  <a href="http://naver.me/xicaa2oH" target="blank">약도</a></div>
                </address>
                
            </div>
            <div style="width:50%;float: left;">               
                <address>
                    <strong></strong><br /> 고객정보보호 책임자:유강현<br /> E-mail:master@bookncafe
                </address>
            </div>          
        </div>   
        <div class="col-md-5">               
            <address>
                <strong></strong><br />
                <ul>
                    <li>1:1고객상담 : 메일로 빠르게 답신드립니다.  <a href="/mypage/MypageUserInquire.jsp" target="blank">문의하기</a></li>
                    <li>구매안전 에스크로 서비스 : <br />
                    안전거래를 위해 현금 결제시 이용가능  <a href="#" target="blank">서비스가입확인</a></li>                
                </ul>
            </address>
        </div>
    </div>
    <p class="text-center">Copyright 2017ⓒ BookNcafe Inc.. All rights reserved. System by: cwsys</p>
</footer>
<!-- 맨아래 탑버튼 -->
<img id="MOVE_TOP_BTN" src="./img/main/btn_top2.png" alt="맨위로">
<script>
$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            $('#MOVE_TOP_BTN').fadeIn();
        } else {
            $('#MOVE_TOP_BTN').fadeOut();
        }
    });
    
    $("#MOVE_TOP_BTN").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});
</script>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>