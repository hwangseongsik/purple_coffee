<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰디테일</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head> 
<body>
	<div class="container">
		<div class="title">
			<h1 class="text-white text-center">PURPLE COFFEE</h1>
		</div>
		<div>
			<h3>쿠폰 보기</h3>
			<h4>아메리카노 1잔 무료 쿠폰</h4>
			<img src=/pictures/barcode.png alt="바코드">
			<div>
				<h4>3220-0010-9527-383</h4>
				<h4>쿠폰 유효기간 2022-04-05 ~ 2022-04-30</h4>
			</div>
		</div>
		<div>
			<h5>유의사항 및 이용안내<h5>
			<ul>
				<li>본 쿠폰은 퍼플커피 별내점에서만 사용가능합니다.</li>
				<li>본 쿠폰은 유효기간 연장은 불가하며, 유효기간이 지나면 쿠폰은 자동 소멸됩니다.</li>
				<li>본 쿠폰은 제품당 1개의 쿠폰만 사용 가능합니다.</li>
				<li>본 쿠폰은 홈페이지 내 퍼플커피 오더에서 사용 가능합니다.</li>
			</ul>
		</div>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>