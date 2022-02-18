<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>tema4Notice</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
	</head>
	<body>
	<%@include file="../header.jsp"%>
	
		<div class="container-fluid">
			<header class="text-center">
				<h1>공지사항 상세 페이지</h1>
			</header>
			
			<nav><!-- TODO:페이지 이동 메뉴 -->
			<ul>
				<li><a href="../">홈페이지 메인</a></li>
				<li><a href="./main">공지사항 메인</a></li>
				<c:if test="${signInUserId == board.userid }">
				<%--로그인 사용자 아이디와 글 작성자 아이디가 일치할 때만 수정 메뉴를 보여줌. --%>
				<li><a href="./update?notice_idx=${notice.notice_idx }">수정</a></li>
				</c:if>
			</ul>
			
			</nav>
		
		
			<div>
				<form>
					<div>
						<label for="notice_title">공지사항 제목</label>
						<input type="text" id="notice_title" name="notice_title" value="${notice.notice_title}" required readonly autofocus/>
					</div>
					<div>
						<label for="notice_content">공지사항 내용</label>
						<textarea rows="5" id="notice_content" name="notice_content" 	required readonly>${notice.notice_content }</textarea>
					</div>
					<div>
						<label for="notice_reg_date">최종 수정 시간</label>
						<fmt:formatDate value="${notice.notice_reg_date }" pattern="yyyy/MM/dd" var="last_update_time"/>
						<input type="text" id="notice_reg_date" name="notice_reg_date" value="${last_update_time }" required readonly />
					</div>
					<div>
						<span>${notice.notice_category }</span>
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