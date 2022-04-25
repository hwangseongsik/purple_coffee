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
			<img src=/pictures/beans.jpg alt="커피콩사진">
		</div>
		<div>
			<ul>
				<li>퍼플커피는 고품질의 원두만을 공급합니다.</li>
				<li>커피 본연의 신선함을 제공합니다.</li>
				<li>선별된 에티오피아 최고의 원두를 제공합니다.</li>				
			</ul>
		</div>
		<div>
			<div>
				에티오피아 커피는 커피의 원산지입니다. 전 세계<br>커피 중에서도 매우 색다른 향미를 지니고<br>있어 그 인기가 매우 높습니다.<br>단맛과 신맛이 조화로운 커피로 평가받고 있습니다.
			</div>
		</div>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>