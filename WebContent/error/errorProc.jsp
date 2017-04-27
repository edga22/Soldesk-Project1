<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isErrorPage="true" %>
<%@ page import="org.apache.logging.log4j.LogManager"%>
<%@ page import="org.apache.logging.log4j.Logger" %>
<!DOCTYPE html>
<%    
    Logger logger = null;
    if(application.getAttribute("logger") != null)
        logger = (Logger)application.getAttribute("logger");
    else {
        logger = LogManager.getLogger();
        application.setAttribute("logger",logger);
    }
    
    logger.error(exception);
%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
</head>

<body>
<script>
swal({
	title : "시스템 에러가 발생했습니다.",
	text : "고객센터 1577-1577로 문의 하세요.",
	type: "error"
}, function(){
	window.location.replace("/main.jsp");
}
);
</script>

</body>