<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Top Navbar -->
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
       	   </button>
			<a class="navbar-brand" href="/admin/index.jsp">서점 관리자</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse"> <!-- nav 내용 시작 -->
			<ul class="nav navbar-nav">
                <li><a href="/admin/member/membermgr.jsp">회원 관리</a></li>
                <li><a href="/order/deliveryMain.jsp">배송 관리</a></li>
				<li><a href="/admin/event/eventmgr.jsp">이벤트 관리</a></li>
				<li><a href="/admin/event/giftmgr.jsp">사은품 관리</a></li>
				<li><a href="/inven/bookManagement.jsp">재고 관리</a></li>
				<li><a href="/admin/design/categorymgr.jsp">분류 관리</a></li>
				<li><a href="/admin/design/bannermgr.jsp">베너 관리</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="disabled"><a href="#">Settings</a>
				<li><a href="logout.jsp">로그아웃</a></li>
				<li><a href="/main.jsp">쇼핑몰</a></li>
			</ul>
		</div>
	</div>
</nav>
