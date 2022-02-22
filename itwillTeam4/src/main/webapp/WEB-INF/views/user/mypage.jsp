<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />


<link href="${pageContext.request.contextPath}/resources/css/user.css"
	rel="stylesheet" type="text/css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">


</head>
<body>
	<%@include file="../header.jsp"%>

	<div class="mypageWrap">


		<div class="mypageWrapTop">
			<p class="mypageHello">안녕하세요</p>
			<p class="mypageName">
				${signInUserId}<span>멤버</span>
			</p>
			<form action="./user/userupdate" method="get">
				<input type="submit" class="mypageOption" value="설정">
			</form>
		</div>

		<div class="mypageTap"></div>
		<div class="mypageCon"></div>
	</div>


	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


	<div>
		<ul>
			<li><a href="http://localhost:8181/team4/meet/insert"
				type="button">메인</a></li>

		</ul>
	</div>
</body>
</html>