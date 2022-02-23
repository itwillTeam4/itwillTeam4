<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>모임 디테일</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
	</head>
	<body>
	<%@include file="../header.jsp"%>
	
		<div class="container-fluid">
			<header class="text-center">
				<h1>모임 상세 페이지</h1>
			</header>
			
			<nav><!-- TODO:페이지 이동 메뉴 -->

			</nav>
		
		
			<div>
			<form method="post">
				<div>
					<div>
						<label for="meet_name">모임 제목</label>
						<input type="text" id="meet_name" name="meet_name" value="${meet.meet_name}" required readonly autofocus/>
					</div>
					<div>
						<label for="meet_host_name">호스트 닉네임</label>
						<input type="text" id="meet_host_name" name="meet_host_name" value="${meet.meet_host_name}" required readonly autofocus/>
					</div>
					<div>
						<label for="meet_intro">모임 인트로</label>
						<textarea rows="5" id="meet_intro" name="meet_intro" 	required readonly>${meet.meet_intro}</textarea>
					</div>
					<div>
						<label for="meet_theme">모임 테마</label>
						<input type="text" id="meet_theme" name="meet_theme" value="${meet.meet_theme}" required readonly autofocus/>
					</div>				
					<div>
						<label for="meet_member_num">모임 인원 수</label>
						<input type="text" id="meet_member_num" name="meet_member_num" value="${meet.meet_member_num}" required readonly autofocus/>
					</div>
					<div>
						<label for="meet_on_or_off">모임 온&오프라인 여부</label>
						<input type="text" id="meet_on_or_off" name="meet_on_or_off" value="${meet.meet_on_or_off}" required readonly autofocus/>
					</div>
									
				</div>

			</form>
		</div>
		</div>
		
		
		<%@include file="../footer.jsp"%>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>