<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mgr.EventMgr" 
		import="domain.Book" %>
<!DOCTYPE html PUBLIC>
<html>
<body>
<%
String[] bookIDs;
int[]	targetIDs = null;
int discount = 0;

request.setCharacterEncoding("utf-8");
if(request.getParameterValues("bookID")!=null){
	bookIDs = request.getParameterValues("bookID");
	targetIDs = new int[bookIDs.length];
	for(int i=0;i<bookIDs.length;i++) targetIDs[i] = Integer.parseInt(bookIDs[i]);
	
	
	if(request.getParameter("dc_percent")!=null && !request.getParameter("dc_percent").equals("")) discount = Integer.parseInt(request.getParameter("dc_percent"));
	if(request.getParameter("gift")!=null);	// 사은품 준비
	if(request.getParameter("event_start")!=null); // 시작일
	if(request.getParameter("event_ent")!=null); // 마감일
}
else{
	response.sendRedirect("/admin/event/eventmgr.jsp");
}

EventMgr evmgr = new EventMgr();

for(int target : targetIDs){
	evmgr.modEvent(target, "", discount, 0, null, null);
}
%>

</body>
</html>