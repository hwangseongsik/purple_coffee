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
			<jsp:include page="../include/header.jsp" />
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
		let bannerList = ["../images/banner1.png", "../images/banner2.png", "../images/banner3.png"];
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