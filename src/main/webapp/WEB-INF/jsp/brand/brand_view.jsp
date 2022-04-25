<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커피콩화면</title>
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
		<div class="mt-5">
			<h2>브랜드 소개</h2>
			<h3>purple coffee</h3>
		</div>
		<div>
			<img src=/pictures/banner1.png alt="브랜드임시사진">
		</div>
		<div>
			<div>다양한 음료와 100% 에티오피아 원두의 진한 커피를<br>맛 볼 수 있는 커피전문점입니다.</div>
			<div class="d-flex">
				<div>Big size<br>&<br>Variable<br>Beverage</div>
				<div>더 크고, 더 맛있다!<br>1.5배 크기의 우수한 품질의 커피를<br>합리적인 가격으로 제공하는<br>PURPLE COFFEE 입니다.</div>
			</div>
		</div>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>