<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purplecoffee</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div id="wrap" class="container">
		<header>
			<div>
				<h1 class="text-white text-center"><a href="/main/main_after_view" class="text-white logo">PURPLE COFFEE</a></h1>
				<div class="d-flex float-right mt-3 text-white">
					<a href="/map/map_find_view" class="text-white mx-1">매장찾기</a>
					|
					<a href="/voc/voc_list_view" class="text-white mx-1">VOC</a>
					|
					<a href="/coupon/coupon_view" class="text-white mx-1">내쿠폰</a>
					ㅣ
					<a href="/user/sign_out" class="text-white mx-1">로그아웃</a>
				</div>
			</div>
		</header>
		<nav>
			<jsp:include page="../include/nav.jsp" />
        </nav>
		<section>
			<jsp:include page="../include/section.jsp" />		
		</section>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>

<script>
	$(document).ready(function() {
		// 배너사진 여러개
		let bannerList = ["/pictures/banner1.png", "/pictures/banner2.png", "/pictures/banner3.png"];
		let currentImageIndex = 0;
		setInterval(function() {
			$("#bannerImage").attr("src", bannerList[currentImageIndex]);
			currentImageIndex++;
			
			if(currentImageIndex == bannerList.length) {
				currentImageIndex = 0;
			}
		}, 3000);
	});
</script>