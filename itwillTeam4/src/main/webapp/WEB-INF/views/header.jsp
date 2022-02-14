<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>header</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link href="${pageContext.request.contextPath}/resources/css/header.css"
	rel="stylesheet" type="text/css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<div id="header">
			<h1 id="logo">
				<a href="../team4"><img
					src="${pageContext.request.contextPath}/resources/img/logo2.png"
					alt="logo" /></a>
			</h1>

			<nav>
				<ul id="navui">

					<li><a href="./search">
							<div id="meet">
								<h2>독서모임 찾기</h2>
							</div>
					</a></li>


					<c:if test="${empty signInUserId}">
						<%-- 로그인 되어 있지 않은경우 --%>

						<li id="login"><a href="./user/signin">로그인</a></li>
						<li id="signup"><a href="./user/register">회원 가입</a></li>
					</c:if>
					<c:if test="${not empty signInUserId }">
						<li id="logout"><a href="./user/signout">로그아웃</a></li>
					</c:if>




				</ul>
			</nav>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
