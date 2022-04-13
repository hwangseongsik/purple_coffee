<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장위치</title>
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
			<h2>퍼플커피 별내점</h2>
		</div>
		<div class="d-flex justify-content-between">
			<div class="d-flex align-items-end purpleNumber">
				<h4 class="mr-5 ml-5">전화번호</h4>
				<h5>031 . 510 . 6461</h5>
			</div>
			<div class="mr-5 mt-5">
				<h4>찾아오시는 길</h4>
				<h3><img src="/pictures/4line.png" alt="4호선핀" class="line mr-3">별내별가람역 4번출구에서 600m</h3>
			</div>
		</div>
		<div class="d-flex purpleMap my-2">
				<h4 class="mr-5"><img src="/pictures/purplepin.png" alt="위치보라색핀" class="purplepin mr-3">위치</h4>
				<h5>경기도 남양주시 덕송2로 6번길 2-10</h5>
		</div>
		<section class="d-flex justify-content-center mb-4">
			<img src="/pictures/map.png" alt="매장위치">
		</section>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>