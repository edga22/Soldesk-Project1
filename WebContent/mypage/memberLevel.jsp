<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>회원 등급 안내</title>

<jsp:include page="/main_navbar.jsp"/>

<style>
	#level img{
		width:80px;
		height:auto;
	}
	#level th{
		text-align:center;
	}
	#level td {
		text-align:center;
		vertical-align:middle;
	}
	#level .infot {
		text-align:left;
	}
</style>

<div class="container">
	<div class="row content">
	    <div class="col-sm-2">
		   <jsp:include page="/mypage/mypageMenu.jsp"/>
		</div>
		<div class="col-sm-10">
			<div class="panel panel-default"> 
			  <div class="panel-heading"><h2><i class="glyphicon glyphicon-user"></i> 회원 등급 안내</h2></div>
			  <div class="panel-body">북앤카페의 회원 등급에 관하여 알려 드립니다.</div>
			</div>
			<div class="table-responsive">      
		        <table class="table table-hover table-striped" id="level">
	                <thead>
			            <tr class="info">
		                    <th>레벨 문장</th>
		                    <th>등급</th>
		                    <th class="infot">필요 포인트</th>
		                </tr>
		            </thead>
		            <tbody>
			            <tr>
			                <td><img src="/img/member/bronze.PNG"></td>
			                <td><span style="background-color: brown;color:#fff;">브론즈등급</span></td>
			             	<td class="infot">2,000포인트 이하회원</td>
			            </tr>
			            <tr>
			                <td><img src="/img/member/silver.PNG"></td>
			            	<td><span style="background-color: #e6e6e6;color:#555;">실버등급</span></td>
			            	<td class="infot">2,001포인트 이상 5,000포인트 이하회원</td>
			            </tr>
			            <tr>
			            	<td><img src="/img/member/gold.PNG"></td>
							<td><span style="background-color: #ffd633;color:#fff;">골드등급</span></td>
							<td class="infot">5,001포인트 이상 10,000포인트 이하회원</td>
						</tr>
			            <tr>
			            	<td><img src="/img/member/platinum.PNG"></td>
			            	<td><span style="background-color: #009999;color:#fff;">플레티넘등급</span></td>
			            	<td class="infot">10,001포인트 이상 30,000포인트 이하회원</td>
			            </tr>
			            <tr>
			            	<td><img src="/img/member/diamond.PNG"></td>
			            	<td><span style="background-color: #00bfff;color:#fff;">다이아등급</span></td>
			            	<td class="infot">30,001포인트 이상 50,000포인트 이하회원</td>
			            </tr>
			            <tr>
				            <td><img src="/img/member/vip.PNG"></td>
				            <td><span style="background-color: #9933ff;color:#fff;">VIP등급</span></td>
				            <td class="infot">50,001포인트 이상회원</td>
			            </tr>
					</tbody>
				</table>
			</div>
			<div class="text-right">
				<a href="/mypage/mypageQuestion.jsp"><button type="button" class="btn btn-primary">질문페이지로</button></a>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/main_foot.jsp"/>
