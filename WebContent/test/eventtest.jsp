<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mgr.EventMgr" %>

<!DOCTYPE html PUBLIC>
<html>
<%
EventMgr evmgr = new EventMgr();
if(evmgr.modEvent(34, "시험 5퍼 할인", 5, 0, null, null) == 1){%>
	<script>
	alert("수정성공");
	</script>
<%}

%>


<body>
</body>

</html>