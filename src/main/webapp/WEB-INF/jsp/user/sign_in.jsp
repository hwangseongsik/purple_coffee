<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="container">
		<div class="loginPageBg d-flex justify-content-center align-items-center">
			<div class="circle">
				<div>PURPLE COFFEE</div>
			</div>
		</div>
		<div class="d-flex justify-content-center">
			<div class="shadow-box m-5">
				<div class="d-flex justify-content-center my-5 mr-5">
					<form id="loginForm" action="/user/sign_in" method="post">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">EMAIL</span>
							</div>
							<input type="text" class="form-control" name="email">
						</div>
						
						<div class="input-group mb-4">
							<div class="input-group-prepend">
								<span class="input-group-text">PW</span>
							</div>
							<input type="password" class="form-control" name="password">
						</div>
						
						<input type="submit" class="btn btn-block loginBtn" value="로그인">
						<div class="float-right mt-3">
							<a href="/user/sign_up_view">회원가입</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<script>
$(documnet).ready(function() {

	// 로그인
	$('#loginForm').submit(function(e) {
		e.preventDefault();
		
		var email = $('input[name=email]').val().trim();
		if (email == '') {
			alert("이메일을 입력해주세요.");
			return;
		}
		
		var password = $('input[name=password]').val();
		if (password == '') {
			alert("비밀번호를 입력해주세요.");
			return;
		}
		
		$.post(url, data)
		.done(function(data)) {
			if (data.result == "success"){
				location.href="template/layout";
			} else {
				alert(data.error_message);
			}
			
		}
	});
});
</script>