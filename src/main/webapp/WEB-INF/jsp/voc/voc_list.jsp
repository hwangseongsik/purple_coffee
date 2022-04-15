<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객의 소리 게시판 리스트</title>
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
		<div class="vocList d-flex justify-content-center">
			<div class="w-50">
				<h1 class="mt-5">퍼플커피</h1>
				<h2>Voice Of Customer</h2>
				
				<table class="table table-hover">
					<thead>
						<tr>
							<th>No.</th>
							<th>제목</th>
							<th>작성날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${vocList}" var="voc">
						<tr>
							<td>${voc.id}</td>
							<td><a href="/voc/voc_detail_view?vocId=${voc.id}">${voc.subject}</a></td>
							<td><fmt:formatDate value="${voc.createdAt}" pattern="yyyy-MM-dd" /></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<%-- 이전 다음 --%>
				<div class="paging-area d-flex justify-content-center">
					<c:if test="${prevId ne 0}">
						<a href="/voc/voc_list_view?prevId=${prevId}" class="mr-5">&lt;&lt; 이전</a>
					</c:if>
					<c:if test="${nextId ne 0}">
						<a href="/voc/voc_list_view?nextId=${nextId}">다음 &gt;&gt;</a>
					</c:if>
				</div>
				
				<div class="d-flex justify-content-end my-3">
					<a href="/voc/voc_create_view" class="btn vocCreateBtn">글쓰기</a>
				</div>
			</div>
		</div>
		<footer>
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
</body>
</html>