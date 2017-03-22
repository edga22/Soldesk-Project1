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
<title>회원가입</title>
<style>
#my1{
	float:left;
	width:200px;
}
</style>
</head>
<body>
<jsp:include page="../logo.jsp"/>
<div class="container">
	<h2>회원가입</h2>
<form action="signInResult.jsp">
	<div class="form-group">
		<label for="inputdefault">아이디</label>
		<input class="form-control" id="ID" name ="ID" type="text" required>
	</div>
	<div class="form-group">
		<label for="inputdefault">비밀번호</label>
		<input class="form-control" id="psw" name="psw" type="password" required>
	</div>
	<div class="form-group">
		<label for="inputdefault">비밀번호 확인</label>
		<input class="form-control" id="psw2" name="psw2" type="password" required>
	</div>
	<div class="form-group">
		<label for="inputdefault">성명</label>
		<input class="form-control" id="name" name="name" type="text" required>
	</div>
	<div class="form group">
		<label for="inputdefault">성별: </label>
		<label class="radio-inlAine"><input type="radio" name="gender" required>남</label>
		<label class="radio-inline"><input type="radio" name="gender" required>여</label>
	</div>
	<div class="form-group">
		<label for="inputdefault">생년월일</label>
		<input class="form-control" id="birthday" name="birthday" type="number" maxlength="8"placeholder="ex)19890914" required>
	</div>
	<div class="form-group">
		<label for="inputdefault">우편번호</label>
		<button id="postcodify_search_button" class="btn btn-default">우편번호찾기</button>
		<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->
		<input type="text" name="" class="postcodify_postcode5 form-control" id="postNumber" value="" placeholder="우편번호 버튼을 누르세요." readonly/>
	</div>
	<div class="form-group">
		<label for="inputdefault">주소</label><br>
		<input type="text" name="" class="postcodify_address form-control" value="" required readonly/><br />
		<input type="text" name="" class="postcodify_details form-control" value="" placeholder="상세주소를 입력하세요." required />
		<!-- jQuery와 Postcodify를 로딩한다 -->
		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

		<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
		<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</div>
	<div class="form-group">
		<label for="inputdefault">전화번호</label>
		<input class="form-control" id="phone" name="phoneNumber" type="text" placeholder=" - 없이 입력" required>
	</div>
	<div class="form-group">
	<label class="control-label col-xs-1" for="email">이메일:</label>
	<div class="col-xs-3">
	<input type="text" class="from-control" style="width:95%;" id="str_email01" name="str_email01" required>
	</div>
	<label class="control-label col-xs-1 text-right"style="margin-right:20px;">@</label>
	<div class="col-xs-3"> 
	<input type="text" class="from-control" style="width:95%" id="str_email02" name="str_email02" disabled value="naver.com" required>
	</div>
	<div class="col-xs-3" style="margin-right:-20px">
		<select class="form-control" id="selectEmail">
	  	<option value="1">직접입력</option>
     	<option value="naver.com" selected>naver.com</option>
     	<option value="hanmail.net">hanmail.net</option>
     	<option value="nate.com">nate.com</option>
     	<option value="gmail.com">gmail.com</option>
 		</select>
 	</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
//이메일 입력방식 선택
$('#selectEmail').change(function(){
   $("#selectEmail option:selected").each(function () {
        
        if($(this).val()== '1'){ //직접입력일 경우
             $("#str_email02").val('');                        //값 초기화
             $("#str_email02").attr("disabled",false); //활성화
        }else{ //직접입력이 아닐경우
             $("#str_email02").val($(this).text());      //선택값 입력
             $("#str_email02").attr("disabled",true); //비활성화
        }
   });
});
</script>
	</div>
	<div class="form-group">
		<input type="submit" class="btn btn-default" style="margin-top:30px" value="회원가입"/>
	</div>
</form>
</div>
</body>
</html>