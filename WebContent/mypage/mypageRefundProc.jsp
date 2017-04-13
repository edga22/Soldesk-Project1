<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="mgr.DeliveryMgr"%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DeliveryMgr dm = new DeliveryMgr();
int select =Integer.parseInt(request.getParameter("a"));
int orderID =Integer.parseInt(request.getParameter("orderID")); 
if(select==1){
PurchaseOrder po = dm.getOrder(orderID);
po.setProgress(6);
dm.updateOrder(po);
%>	
	<p>교환</p>
	<p>oderID=<%=orderID %></p>
<%	
}else if(select==2){
PurchaseOrder po = dm.getOrder(orderID);
po.setProgress(7);
dm.updateOrder(po);
%>
	<p>환불</p>
	<p>oderID=<%=orderID %></p>
<%
}
%>
</body>
</html>