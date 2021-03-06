<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.navbar-brand {
    height:160px;
    width:100%;
    text-align:center;
    font-size:5rem;
    color:#0275d8;
    line-height: 0.8;
    margin-top:20px;
}
.navbar-brand span{
    font-size:6rem;
    color:#0275d8;
}
.navbar-brand font{
    font-size:3rem;
    color:#0275d8;
}
</style>    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>회사 소개</title>
</head>
<body>
<div class="container">
<h2>개요</h2>
	<br />
		<jsp:include page="/logo.jsp"/>
 	<br />
 		 <p style="padding:20px 25px 30px 15px; border-left:4px solid #dcdcdc; margin-left:30px; margin-bottom:10px;">‘북cafe'에서 구입하시면 당신의 꿈, 희망, 미래가 펼쳐집니다. <br />
 			‘북 cafe’이라는 브랜드 안에는 피땀눈물이 들어가있습니다.<br />
  			<br />
 				북cafe는 수 없이 많은 책을 판매하기위해 행동하고있으며 우리가 도입하면 그것이 곧 학원의 <br />
  				표준이
  				되었습니다.
 				오늘도 북cafe는 혁신을 거듭하며 우리나라 책거레의 역사를 새롭게 써나가고 있습니다.</p>
 			<br />
 		<div style="border-top:1px solid #eaeaea; padding-top:10px;border-bottom:1px solid #eaeaea; padding-bottom:10px; background:#f7f7f7; margin:0 24px;">
 			<table width="95%" border="0" align="center" cellpadding="8" cellspacing="0" bgcolor="#f7f7f7">
 				<tr>
 					<th width="25%" scope="row" class="aladin_th">상호</th>
 					<td>북 cafe</td>
 				</tr>
 				<tr>
 					<th scope="row"  class="aladin_th">대표이사</th>
 					<td>윤광재</td>
				</tr>
 				<tr>
 					<th scope="row"  class="aladin_th">직원수</th>
					<td>서른마흔다섯명</td>
 				</tr>
 					<tr>
 					<th scope="row"  class="aladin_th">설립일</th>
					<td>2017년 3월 30일</td>
				</tr>
                    <tr>
 					<th scope="row"  class="aladin_th">서비스 오픈일</th>
					<td>2017년 3월 30일</td>
					</tr>
 				<tr>
 					<th scope="row"  class="aladin_th">홈페이지</th>
					<td>www.asb.dsd</td>
				</tr>
					<tr>
 					<th scope="row"  class="aladin_th">본사</th>
					<td>솔데스크 1강의장</td>
					</tr>
				</table>
			</div>
     </div>
     
     <jsp:include page="/main_foot.jsp"></jsp:include>
     