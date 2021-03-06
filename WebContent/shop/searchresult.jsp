<%@page import="mgr.EventMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
	import="domain.Category"
	import="mgr.search.SearchMgr"
	import="mgr.search.SearchBox"
	import="mgr.BookSortMgr"
	import="service.CategoryCounter"
	import="mgr.EventMgr"
	 %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<%
request.setCharacterEncoding("utf-8"); // 항상 UTF8로 처리한다
Book[] scResult = null;	// 검색 결과를 저장할 배열

String scTarget = "";
String scWord = "";
String sortOrder = "";
int order = 9;
int code1 = 0;

int domesticCnt=0;
int overseaCnt=0;
int ebookCnt=0;

if(request.getParameter("SearchTarget") != null) scTarget = request.getParameter("SearchTarget");
if(request.getParameter("SearchWord") != null) scWord = request.getParameter("SearchWord");
if(request.getParameter("SortOrder") != null) sortOrder = request.getParameter("SortOrder");

try{
	order = Integer.parseInt(sortOrder);
}catch(Exception e){
	if(request.getParameter("SortOrder")!=null)	order = 9;
	else order = 0;
}

// 결과 내 검색일때
if(request.getParameter("inSc") != null && request.getParameter("inSc").equals("1")){
	SearchBox scbox = null;
	if(session.getAttribute("scbox") != null){
		scbox = (SearchBox)session.getAttribute("scbox");
		if(!scWord.equals(""))scbox.wordFilter(scWord);
		scResult = scbox.getBooks();
	}
}
else if(!scWord.equals("")){ // 최초 검색일때
	SearchMgr scmgr = new SearchMgr();
	if(scTarget.equals("") || scTarget.equals("all")){
		scResult = scmgr.getBooks(scWord);
	}
	else{		
		try{
			code1 = Integer.parseInt(scTarget);
		}catch(Exception e){
			code1 = 0;
		}
		scResult = scmgr.getCode1Books(scWord, code1);
	}
	
	// 검색결과를 세션에 저장
	SearchBox scbox = new SearchBox(scResult);
	session.setAttribute("scbox", scbox);	
}

CategoryCounter cCnter = new CategoryCounter();
if(scResult != null && scResult.length > 0){
	/* 정렬방식 order
	0 : 출시일순 (기본값)
	1 : 제목순
	2 : 저자순
	3 : 가격순
	*/
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
	
	
	domesticCnt = cCnter.code1Counter(scResult, 10);
	overseaCnt = cCnter.code1Counter(scResult, 20);
	ebookCnt = cCnter.code1Counter(scResult, 30);
}

Category[] useCategory = cCnter.getCategoryList(scResult);
EventMgr evmgr = new EventMgr();
%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
#cate-top{
}

#cate-side {
	margin-top : 2rem;
	background-color : white ;
	
}

#align-bar {
	margin : 1rem;
	padding : 1rem 0.3rem;
	border-bottom : 1px solid black;
}
#align-bar > .col-md-2 {
	width : 15%;
}
#align-bar > .col-md-offset-1 {
	margin-left : 5%;
}
#booktitle {
	font-size : 2rem;
	margin-top : -0.5rem;
}

.inSearch-group{
	padding : 1rem;
	border : 1px solid silver;
}
.cate-group{
	padding-top : 1rem;
}

#order<%=order%>{
	font-weight : bold;
}

.image {
	max-height : 125px;
	width : 85px;
}

label {
	vertical-align:-1px;
	font-size:12px;
}
</style>
<title>북카페: 검색 결과</title>
</head>
<body>

<jsp:include page="/main_navbar.jsp"></jsp:include>

<!-- JS 파트  -->
<script type="text/javascript">
/* DOM레디 */
$(document).ready(function(){
<%for(Category output : useCategory){ %>
	$("input[name='<%=output.getCategoryID()%>']").click(function(){
		$("div[name='<%=output.getCategoryID()%>']").toggle();
	});
<%}%>
});

function ImgError(source){
	source.src = "/img/item/normal.gif";
	source.onerror = "";
	return true;
};
</script>

<div class="container"> <!-- Main container -->
<div class="row" id="cate-top">
	<ul class="nav nav-tabs">
		<li><a href="#">통합검색(<%=(scResult!=null)?scResult.length:0 %>)</a></li>
		<li><a href="#">국내도서(<%=domesticCnt %>)</a></li>
		<li><a href="#">외국도서(<%=overseaCnt %>)</a></li>
		<li><a href="#">E-Book(<%=ebookCnt %>)</a></li>
	</ul>
</div>

<div class="row">
	<div class="col-md-2" id="cate-side">
		<div class="inSearch-group">			
			<p>결과 내 검색</p>
			<form action="">
			<input type="text" style="width : 70%;" name="SearchWord">
			<button class="btn btn-default btn-sm" type="submit" name="inSc" value="1"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>	
			</form>		
		</div>
		<div class="cate-group">		
			<p>카테고리 선택</p>
			<form action="">
			<ul class="list-group">
				<%
				for(Category output : useCategory){ 
				%>
					<li class="list-group-item">
					 <%if(output.getCode2()!=0){ %>	
					 <input style="vertical-align:text-top;" type="checkbox" name="<%=output.getCategoryID() %>" checked /> &nbsp; <%} %>
					 <label for=""><%=output.getCategorySubject() %> </label>
					</li>
				<%} %>
			</ul>
			</form>
		</div>
		
	</div>
	<div class="col-md-10" id="result"> <!-- result -->
		<div class="row" id="align-bar">
			
			<div class="col-md-2 col-md-offset-1"><a id="order1" href="/shop/searchresult.jsp?SortOrder=1&inSc=1">제목순</a></div>
			<div class="col-md-2 col-md-offset-1"><a id="order2" href="/shop/searchresult.jsp?SortOrder=2&inSc=1">저자순</a></div>
			<div class="col-md-2 col-md-offset-1"><a id="order3" href="/shop/searchresult.jsp?SortOrder=3&inSc=1">가격순</a></div>
			<div class="col-md-2 col-md-offset-1"><a id="order0" href="/shop/searchresult.jsp?SortOrder=0&inSc=1">출간일순</a></div>
			<div class="col-md-2 col-md-offset-1">
			<select name="display_number" class="">
				<option value="10">10개</option>
				<option value="20">20개</option>
				<option value="25">25개</option>
			</select>
			</div>
			
		</div>
		
		<%if(scResult != null){if(scResult.length > 0){
			for(int i=1;i<=scResult.length;i++){
			int idx = i-1;
			Category currentCate = null;
			for(Category c : useCategory){
				if(scResult[idx].getCategoryID() == c.getCategoryID()){ currentCate = c; break; }}			
		%>
		<div class="row" style="margin-bottom: 1rem;" name="<%=currentCate.getCategoryID() %>"> <!-- items -->
			<div class="col-md-1">
				<p><%=i %>.</p>
				<input type="checkbox" name="bookID" value="<%=scResult[idx].getBookID() %>">
			</div>
			<div class="col-md-2"><a href="/inven/bookDetail.jsp?=bookID=<%=scResult[idx].getBookID()%>" class="thumbnail">
			<img class="image" alt="image" onerror="ImgError(this)" src="<%=scResult[idx].getImageID()%>"></a></div>
			<div class="col-md-7">
				<p id="booktitle">[<%=currentCate.getCategoryName() %>]<a href="/inven/bookDetail.jsp?bookID=<%=scResult[idx].getBookID()%>"><%=scResult[idx].getBookName() %></a></p>
				<p>저자 : <%=scResult[idx].getAuthor() %> 출판사 : <%=scResult[idx].getPublisher() %></p>
				<ul>
					<li>판매가 : <%=scResult[idx].getPrice() %>원</li>
					<li>할인가 : <%=(int)(scResult[idx].getPrice() * evmgr.getDiscountMult(scResult[idx].getBookID())) %>원  <%= (evmgr.getDiscout(scResult[idx].getBookID())!=0)? "<b>"+evmgr.getDiscout(scResult[idx].getBookID())+"% off </b>":"" %></li>					
				</ul>
			</div>
			<div class="col-md-2">
				<p><a class="btn btn-default" href="/shop/basket.jsp?bookID=<%=scResult[idx].getBookID()%>">장바구니 추가</a></p>
				<p><a class="btn btn-default" href="/shop/payment.jsp?bookID=<%=scResult[idx].getBookID()%>">바로 구매</a></p>
			</div>
		</div>
		<%}}else{%>
		<div class="row" style="margin-bottom: 1rem;">
			<div class="col-md-5 col-md-offset-1"><p>검색 결과가 없습니다.</p></div>
		</div>
		<%		
		}}else{%>
		<div class="row" style="margin-bottom: 1rem;">
			<div class="col-md-5 col-md-offset-1"><p>검색 결과가 없습니다.</p></div>
		</div>
		<%}%>
		
	</div><!-- result -->
</div>

</div> <!-- Main container -->
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>