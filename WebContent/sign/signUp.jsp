<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>회원가입</title>
</head>
<body>

<jsp:include page="../logo.jsp"/>

	<div class="container" id="pws2" style="width:590px">
		<h2>회원가입</h2>
	<form action="/sign/signUpProc.jsp" method="post">
		<div class="form-group form-inline">
			<div class="form-group">
				<label for="email">아이디:</label><br>
				<input type="text" class="form-control" id="str_email01" name="str_email01" required/>
			</div>
			<div class="form-group" style="margin-top:2.5rem">
				<label>@</label>	 
				<input type="text" class="form-control" id="str_email02" name="str_email02" value="" required/>
			</div>
			<div class="form-group" style="margin-top:2.5rem">
				<select class="form-control" id="selectEmail">
	  				<option value="1" selected>직접입력</option>
	    			<option value="naver.com">naver.com</option>
	    			<option value="hanmail.net">hanmail.net</option>
	    			<option value="nate.com">nate.com</option>
	    			<option value="gmail.com">gmail.com</option>
	 			</select>
	 		</div>
		</div>
		<div class="form-group">
			<label for="inputdefault">비밀번호</label>
			<input class="form-control" id="psw" name="psw" maxlength="14" type="password" required>
		</div>
		<div class="form-group">
			<label for="inputdefault">비밀번호 확인</label>
			<input class="form-control" id="psw2" name="psw2" maxlength="14" type="password" required>
			<font name="check" color="red"></font>
		</div>
		<div class="form-group">
			<label for="inputdefault">성명</label>
			<input class="form-control" id="name" name="name" type="text" required>
		</div>
		<div class="form-group">
			<label for="inputdefault">우편번호</label>
			<button type="button" id="postcodify_search_button" class="btn btn-success">우편번호찾기</button>
			<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->
			<input type="text" name="postCode" class="postcodify_postcode5 form-control" id="postNumber" value="" placeholder="우편번호 버튼을 누르세요." readonly/>
		</div>
		<div class="form-group">
			<label for="inputdefault">주소</label><br>
			<input type="text" name="address1" class="postcodify_address form-control" value="" required readonly/><br />
			<input type="text" name="address2" class="postcodify_details form-control" value="" placeholder="상세주소를 입력하세요." required />
			<!-- jQuery와 Postcodify를 로딩한다 -->
			<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
			<!-- "우편번호찾기" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
			<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
		</div>
		<div class="form-group">
			<label for="inputdefault">전화번호</label>
			<input class="form-control" id="phone" name="phone" type="text" placeholder=" - 없이 입력" required>
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-default" style="margin-top:30px" value="회원가입"/>
		</div>
	</form>
	</div>

	<script type="text/javascript">
		//이메일 입력방식 선택
		$('#selectEmail').change(function(){
			$("#selectEmail option:selected").each(function () {
	     
     			if($(this).val()== '1'){ //직접입력일 경우
          			$("#str_email02").val('');                //값 초기화
          			$("#str_email02").attr("readonly",false); //활성화
     			}else{ //직접입력이 아닐경우
          			$("#str_email02").val($(this).text());    //선택값 입력
          			$("#str_email02").attr("readonly",true);  //비활성화
     			}
			});	
		});	
	
		$(function(){
			$('#psw').keyup(function(){
				$('font[name=check]').text('');
				if($('#psw').val().length < 6 || $('#psw').val().length > 14) { 
					$('font[name=check]').html("Password가 잘못되었습니다.6~14자만 입력하세요."); 					  
				}
			}); 
			$('#psw2').keyup(function(){
	 	  		if($('#psw').val()!=$('#psw2').val()){
	 	   			$('font[name=check]').text('');
	 	   			$('font[name=check]').html("두 글자가 다릅니다.");
	 	  		}else{
	 	   			$('font[name=check]').text('');
	 	   			$('font[name=check]').html("암호 확인 되었습니다.");
	 	  		}
	 	 	});
		});
	</script>
</body>
</html>