<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mgr.EventMgr" 
		import="domain.Book" %>
<!DOCTYPE html PUBLIC>
<html>
<body>
<%
String[] bookIDs;
String eventname = "";
int[]	targetIDs = null;
int discount = 0;

request.setCharacterEncoding("utf-8");
if(request.getParameterValues("bookID")!=null && request.getParameter("eventname")!=null && !request.getParameter("eventname").equals("")){
	bookIDs = request.getParameterValues("bookID");
	targetIDs = new int[bookIDs.length];
	for(int i=0;i<bookIDs.length;i++) targetIDs[i] = Integer.parseInt(bookIDs[i]);
	
	eventname = request.getParameter("eventname");
	if(request.getParameter("dc_percent")!=null && !request.getParameter("dc_percent").equals("")) discount = Integer.parseInt(request.getParameter("dc_percent"));
	if(request.getParameter("gift")!=null);	// 사은품 준비
	if(request.getParameter("event_start")!=null); // 시작일
	if(request.getParameter("event_ent")!=null); // 마감일
	

	EventMgr evmgr = new EventMgr();

	for(int target : targetIDs){
		evmgr.modEvent(target, eventname, discount, 0, null, null);
	}
}
else{%>
	<script>
	window.location.replace("/admin/event/eventmgr.jsp");
	</script>
<%}

%>
<script>
swal({
	title: "이밴트 수정 성공",
	text: "<%=eventname%> 추가 성공했습니다",
	type: "success",
	timer: 1000,
	showConfirmButton: false
},
		function(){
	window.location.replace("/admin/event/eventmgr.jsp");
	
});
</script>
</body>
</html>