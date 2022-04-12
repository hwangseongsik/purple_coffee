<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="title">
		<h1 class="text-white text-center">PURPLE COFFEE</h1>
	</div>
	<div class="d-flex justify-content-center">
		<div class="sign-up-box">
			<h2 class="m-4 font-weight-bold">회원가입</h2>
			<form id="signUpForm" method="post" action="/user/sign_up">
				<span class="sign-up-subject">email</span>
				<div class="d-flex mt-2">
					<input type="text" name="email" class="form-control col-8" placeholder="이메일을 입력해주세요">
					<button type="button" id="emailCheckBtn" class="btn">중복확인</button>
				</div>
				
				<%-- 아이디 체크 결과 --%>
				<div class="mb-3">
					<div id="emailCheckLength" class="small text-danger d-none">이메일을 4자 이상 입력해주세요.</div>
					<div id="emailCheckDuplicated" class="small text-danger d-none">이미 사용중인 이메일입니다.</div>
					<div id="emailCheckOk" class="small text-success d-none">사용 가능한 이메일입니다.</div>
				</div>
				
				<span class="sign-up-subject">password</span>
				<div class="mt-2 mb-3">
					<input type="password" name="password" class="form-control w-100" placeholder="비밀번호를 입력하세요">
				</div>
	
				<span class="sign-up-subject">confirm password</span>
				<div class="mt-2 mb-3">
					<input type="password" name="confirmPassword" class="form-control w-100" placeholder="비밀번호를 입력하세요">
				</div>
	
				<span class="sign-up-subject">name</span>
				<div class="mt-2">
					<input type="text" name="name" class="form-control w-100" placeholder="이름을 입력하세요">
				</div>
				<br>
				<div class="d-flex justify-content-center mt-3">
					<button type="button" id="signUpBtn" class="btn w-100">가입하기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>

<script>
$(document).ready(function() {
	
	// 이메일 중복 확인
	$('#emailCheckBtn').on('click', function(e) {
		//validation
		var email = $('input[name=email]').val().trim();
		// email이 4자 이상이 아니면 경고문구 노출하고 끝
		if (email.length < 4) {
			$('#emailCheckLength').removeClass('d-none'); // 경고
			$('#emailCheckDuplicated').addClass('d-none'); // 숨김
			$('#emailCheckOk').addClass('d-none'); // 숨김
			return;
		}
		
		// 중복여부
		$.ajax({
			url: "/user/is_duplicated_email",
			data: {"email": email},
			success: function(data) {
				if (data.result == true) { // 중복인 경우
					$('#emailCheckDuplicated').removeClass('d-none'); // 중복 경고문구 노출
					$('#emailCheckLength').addClass('d-none'); // 숨김
					$('#emailCheckOk').addClass('d-none'); // 숨김
				} else {
					$('#emailCheckOk').removeClass('d-none'); // 사용가능 문구 노출
					$('#emailCheckLength').addClass('d-none'); // 숨김
					$('#emailCheckDuplicated').addClass('d-none'); // 숨김
				}
			},
			error: function(error) {
				alert("이메일 중복확인에 실패했습니다. 관리자에게 문의해주세요.");
			}
		});
	});
	
	$('#signUpBtn').on('click', function(e) {
		e.preventDefault(); // 클릭 이벤트의 기본 동작을 중단
		
		// validation
		var email = $('input[name=email]').val().trim();
		if (email == '') {
			alert("이메일을 입력하세요.");
			return;
		}
		
		var password = $('input[name=password]').val().trim();
		var confirmPassword = $('input[name=confirmPassword]').val().trim();
		if (password == '' || confirmPassword == '') {
			alert("비밀번호를 입력하세요.");
			return;
		}
		
		// 비밀번호 확인
		if (password != confirmPassword) {
			alert("비밀번호가 일치하지 않습니다. 다시 입력하세요.");
			$('#password').val('');
			$('#confirmPassword').val('');
			return;
		}
		
		var name = $('input[name=name]').val().trim();
		if (name == '') {
			alert("이름을 입력하세요.");
			return;
		}
		
		// 이메일 중복확인이 완료되었는지 확인
		if ($('#emailCheckOk').hasClass('d-none') == true) {
			alert("이메일 확인을 다시 해주세요.");
			return;
		}
		
		// submit
		// ajax
		var url = $('#signUpForm').attr("action"); // action 주소 가져오기
		var data = $('#signUpForm').serialize(); // 폼태그 한번에 보낼 수 있게 구성
		
		$.post(url, data)
		.done(function(data) {
			if (data.result == "success") {
				alert("퍼플커피가입을 환영합니다! 로그인을 해주세요.");				
				location.href="/user/sign_in_view";
			} else {
				alert("가입에 실패했습니다. 다시 시도해주세요.");
			}
		}); 
	});
});
</script>