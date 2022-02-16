<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>team4Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link href="${pageContext.request.contextPath}/resources/css/notice.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="../header.jsp"%>


	<div id="contentWrap">
		<div class="innerWrap">
		
		<div class="left-gnb">
			<div class="profile-box">
				<p>${signInUserId}님</p>
				<span>환영합니다.</span>
			</div>
			<ul class="comMenu">
			<li><a href="#">실시간 독서 모임 커뮤니티</a></li>
			<li><a href="#">나의 독서 모임 커뮤니티</a></li>
			<li><a href="#">북적북적 놀이터</a></li>
			<li><a href="#">공지사항/이벤트</a></li>
			
			</ul>
		</div>

		<div class="right-contents"></div>
		
		</div>
	</div>







	

	<%@include file="../footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>