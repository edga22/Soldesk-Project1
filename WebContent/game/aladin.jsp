<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="lightsoff" id="fullscreen" style="width:640px;height:480px;">
<iframe width="640" scrolling="no" height="480" frameborder="0" src="http://flashgames312.com/emulator/Aladdin.html"></iframe><script type="text/javascript">
$(function() {
	$('#support').text($.fullscreen.isNativelySupported() ? 'supports' : 'doesn\'t support');
	$('#fullscreen .requestfullscreen').click(function() {
		$('#fullscreen').fullscreen();
		return false;
	});
	$('#fullscreen .exitfullscreen').click(function() {
		$.fullscreen.exit();
		return false;
	});
	$(document).bind('fscreenchange', function(e, state, elem) {
	if ($.fullscreen.isFullScreen()) {
	$('#fullscreen .requestfullscreen').hide();
	$('#fullscreen .exitfullscreen').show();
	} else {
	$('#fullscreen .requestfullscreen').show();
		$('#fullscreen .exitfullscreen').hide();
		}
	$('#state').text($.fullscreen.isFullScreen() ? '' : 'not');
		});
	});
</script>
 </div>
</body>
</html>