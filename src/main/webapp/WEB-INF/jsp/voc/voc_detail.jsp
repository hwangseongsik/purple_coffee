<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 상세화면</title>
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
		
		<div class="d-flex justify-content-center">
			<div class="w-50">
				<h1>고객의 소리</h1>
				<input type="text" name="subject" class="form-control" value="${voc.subject}">
				<textarea class="form-control" name="content" rows="15">${voc.content}</textarea>
			
				<div class="clearfix mt-5">
					<button type="button" id="vocDeleteBtn" class="btn btn-secondary" data-voc-id="${voc.id}">삭제</button>
					
					<div class="float-right">
						<button type="button" id="vocListBtn" class="btn">목록</button>
					</div>
				</div>			
			</div>
		</div>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>

<script>
$(document).ready(function() {
	// 삭제 클릭
	$('#vocDeleteBtn').on('click', function() {
		let vocId = $(this).data('voc-id');

		$.ajax({
			type:"delete"
			, url:"/voc/delete"
			, data: {"vocId":vocId}
			, success: function(data) {
				if (data.result == "success") {
					alert("삭제되었습니다.");
					location.href = "/voc/voc_list_view";
				} else {
					alert(data.error_message);
				}
			}
			, error: function(e) {
				alert("게시글을 삭제하는데 실패했습니다. 관리자에게 문의해주세요.");
			}
		});
	});
	
	// 목록 클릭
	$('#vocListBtn').on('click', function() {
		location.href = "/voc/voc_list_view";
	});
});
</script>