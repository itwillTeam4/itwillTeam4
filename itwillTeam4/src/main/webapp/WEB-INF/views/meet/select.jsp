<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내게 맞는 모임 검색</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
<%@include file="../header.jsp"%>
	<div class="container-fluid">
		<header class="jumbotron text-center">
			<h1>내게 맞는 모임 검색 페이지</h1>
		</header>

		<nav>
			<!-- 메뉴 -->
		</nav>
		
		<div class="search">
			<h2>내게 맞는 독서 모임을 선택해 보세요!</h2>
			<div class="searchbox">
				<form id="searchform" action="/cont/?act=search" method="post">
				<input type="hidden" name="searchmode" value="Y">
				<ul>
					<li>지역</li>
					<li>
						<div class="order-list-wrap">
							<input type="radio" name="search1" id="S-12" value ="1">
							<div class="radio-box">
								<label for="S-12">온라인</label>
							</div>
							<input type="radio" name="search1" id="S-13" value ="2">
							<div class="radio-box">
								<label for="S-12">오프라인</label>
							</div>
						</div>
					</li>
					::after
				</ul>
				<ul>
					<li>독서 모임 테마</li>
					<li>
						<div class="order-list-wrap">
							<input type="radio" name="search1" id="S-12" value ="1">
							<div class="radio-box">
								<label for="S-12">온라인</label>
							<input type="radio" name="search1" id="S-13" value ="2">
								<label for="S-12">오프라인</label>
							</div>
						</div>
					</li>
					::after
				</ul>
								<ul>
					<li>지역</li>
					<li>
						<div class="order-list-wrap">
							<input type="radio" name="search1" id="S-12" value ="1">
							<div class="radio-box">
								<label for="S-12">온라인</label>
							<input type="radio" name="search1" id="S-13" value ="2">
								<label for="S-12">오프라인</label>
							</div>
						</div>
					</li>
					::after
				</ul>
					
					
					
					
					
				</ul>
				</form>
			</div>
		</div>

	</div>
	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>