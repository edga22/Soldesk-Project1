<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.MemberService"
         import="domain.PurchaseOrder"
         import="mgr.DeliveryMgr" 
         import="domain.Book"
         import="service.OrderState"
         import="domain.OrderDetail"
         import="mgr.BookMgr"
         import="service.MypageService"
         import="java.text.NumberFormat"%>
         
<%@ page import="domain.UserInquire"%>
<%@ page import="dao.UserInquireDao"%>
<%@ page import="dao.DbBasedUserInquireDao"%>

<%@ page import="dao.MemberDao"%>
<%@ page import="dao.DbBasedMemberDao"%>
<%@ page import="domain.Member"%>
         
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>마이페이지</title>

 <%
 int tmp = (Integer)session.getAttribute("memberID");
 int userNo = 0;
 if(tmp!=0){
     userNo = tmp;
 }
 MemberService ms = new MemberService();
 Member member = ms.getMember(userNo);
 
 MemberDao mbDao = new DbBasedMemberDao();
 UserInquireDao uiDao = new DbBasedUserInquireDao();

 int memberID = (Integer) session.getAttribute("memberID");
     
 Member mb = mbDao.getMember(memberID);      
 UserInquire[] userInquire = uiDao.getAskTitle(memberID);    //배열로 해서 받자
 
 DeliveryMgr dm = new DeliveryMgr();
 BookMgr bm = new BookMgr();
 OrderState order = new OrderState();
 MypageService mps = new MypageService();
 NumberFormat nf = NumberFormat.getNumberInstance();

 PurchaseOrder[] purchaseOrders = dm.getMember(memberID);
 %>

<jsp:include page="/main_navbar.jsp"/>

<style>
#rcorners1 {
    border-radius: 15px;
    background: #0070C0;
    padding: 10px; 
    width: 100%;
    height: 150px;   
}

#rcorners2 {
    border-radius: 15px;
    background: #fff;
    border: 1px solid #888;
    padding: 10px 20px; 
    width: 80%;
    height: 130px;
    float:right;
}
#rcorners2-1 {
    padding: 0 20px;
    width: 20%;
    height: 130px;
    float:left;
    color:#fff;
}
.mypageH {
    width:20%;
    float:left;
    text-align:center;
    font-size:1.6rem;
    font-weight:bold;
    line-height: 2.5;
}
.mypageH i {
    font-size:75px;
    color:#0070C0
}
.mypageB {
    background-color: #888;
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    width:3.6rem;
    font-size: 1.8rem;
    font-weight:bold;
    cursor: pointer;
    border-radius: 50%;
    line-height: 1.8;
}
#oderTb th {
    text-align:center;
}
#to1 th, #to1 td{
    text-align:center;
}
#to1 .infot {
    text-align:left;
}
</style>
<div class="container">
	<div class="row">
	    <div class="col-sm-2">
	    <jsp:include page="/mypage/mypageMenu.jsp"/>
	    </div>
        <div class="col-sm-10">
            <div id="rcorners1">
			    <div id="rcorners2-1">
                    <h3>MY주문정보</h3>
                    고객님의 최근 1개월<br> 주문정보입니다. 
			    </div>
			    <div id="rcorners2">
			         <div class="mypageH">
			             <i class="material-icons">account_balance_wallet</i><br>
                         입금확인중
                         <button class="mypageB">1</button>
			         </div>
				     <div class="mypageH">
                         <i class="material-icons">credit_card</i><br>
                         결재완료
                         <button class="mypageB">0</button>
                     </div>
                     <div class="mypageH">
                         <i class="material-icons">card_giftcard</i><br>
                         발송중
                         <button class="mypageB">2</button>
                     </div>
                     <div class="mypageH">
                         <i class="material-icons">local_shipping</i><br>
                         상품발송
                         <button class="mypageB">0</button>
                     </div>
                     <div class="mypageH">
                         <i class="material-icons">assignment_turned_in</i><br>
                         배송완료
                         <button class="mypageB">10</button>
                     </div>
                </div>
			</div>
			<div style="margin:5rem 0 1.2rem 0"> 
              <h3><span style="font-size:1.2rem;vertical-align:middle;">●</span> MY 구매 내역</h3>
            </div>
			<div class="table-responsive">
	           <table class="table table-hover" id="oderTb">
	              <thead>
	                <tr class="info">
	                    <th>구매번호</th>
	                    <th>구매일</th>
	                    <th style="width:40rem;">상품</th>
	                    <th>포인트</th>
	                    <th>배송상태</th>
	                    <th>반품</th>
	                </tr>
	            </thead>
	            <tbody>
	        <%
	        int j = 0;
	        for(PurchaseOrder po:purchaseOrders){ 
	            Book book = bm.getBook(po.getPurchaseOrderID());
	            OrderDetail[] ods =mps.getIdDetails(po.getPurchaseOrderID());
	            int orderID =po.getPurchaseOrderID();
	            int point =0;
	            if(po.getProgress()==4 ||po.getProgress()==5){
	                point= mps.getPoint(ods);
	            }
	            if(j < 3){
	        %>  
	                <tr>
	                    <td class="text-center"><%=po.getPurchaseOrderID()%></td>
	                    <td><%=po.getPurchaseDate() %></td>
	                    <td><%=order.getProduct(ods) %></td>
	                    <td class="text-right"><%=nf.format(point) %>P</td> 
	                    <td><%=order.change(po.getProgress())%></td>
	                    <td style="text-align:center; height:auto;">
	                       <a href="/mypage/mypageRefundProc.jsp?a=1&orderID=<%=orderID %>" class="btn btn-warning btn-xs">교환</a>
	                       <a href="/mypage/mypageRefundProc.jsp?a=2&orderID=<%=orderID %>" class="btn btn-danger btn-xs">환불</a>
	                       <a href="/mypage/mypageRefundProc.jsp?a=3&orderID=<%=orderID %>" class="btn btn-primary btn-xs">교환/환불취소</a> </td>
	                </tr>
	        <%
		        j++;
		        }
	        }
	        %>
	              </tbody>
	            </table>
	        </div>
			<div style="margin:1rem 0 1.2rem 0"> 
              <h3><span style="font-size:1.2rem;vertical-align:middle;">●</span> MY 상담 내역</h3>
            </div>
			<div class="table-responsive"> 
                <table class="table table-hover table-striped" id="to1">
                    <tr class="info">
                        <th>번호</th>
                        <th>제목</th>
                        <th>등록일</th>
                        <th>답변여부</th>
                    </tr>
                    <!-- 1:1 질문 답변 준비 -->
                    <% 
                    if(userInquire.length >0){
                        for(int i = 0 ; i< userInquire.length && i < 3; i++){ %>
                    <tr>
                        <td><%=i+1 %></td>              
                        <td class="infot">                      
                            <a href="/mypage/mypageUserInquireView.jsp?userInquireID=<%=userInquire[i].getUserInquireID()%>">
                            <%=userInquire[i].getTitle()%></a>
                        </td>
                        <td><%=userInquire[i].getDate() %></td>
                        <td>
                        <% if(userInquire[i].getState() == 1){ %>
                            진행중
                        <%
                        }else{ %>
                            답변완료
                        <% } %>
                        </td>                                   
                    </tr>
                    <%
                        }
                    }               
                    %>
                </table>
            </div>
	    </div>
    </div>
</div>

<jsp:include page="/main_foot.jsp"/>                                     
