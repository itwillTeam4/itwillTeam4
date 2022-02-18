<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>team4Notice</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
	</head>
	<body>
	
	<%@include file="../header.jsp"%>
	
		<div class="container-fluid">
			<header>
				<h1>공지사항 수정 페이지</h1>
			</header>
			
			<nav><!-- TODO:페이지 이동 메뉴 -->
			<ul>
				<li><a href="../">홈페이지 메인</a></li>
				<li><a href="./main">공지사항 메인</a></li>
				<li><a id="menu-delete" href="./delete?notice_idx=${notice.notice_idx }">삭제</a></li>
			</ul>
			
			</nav>
		
		
				<div>
					<form action="./update" method="post">
					<div style="display:none;">
						<input type="number" name="notice_idx" value="${notice.notice_idx }" readonly/>
					
					</div>
				
					<div>
						<label for="notice_title">공지사항 제목</label>
						<input type="text" id="notice_title" name="notice_title" value="${notice.notice_title}" required autofocus/>
					</div>
					<div>
						<label for="notice_content">공지사항 내용</label>
						<textarea rows="5" id="notice_content" name="notice_content" 	required >${notice.notice_content }</textarea>
					</div>

					<div>
						<select name="notice_category"><!-- TODO: FAQ 라면 FAQ가 선택돼있게 구현해야함 최종으로 어떻게 표현될지는 좀 더 고민 -->
							<option value="공지사항">공지사항</option>
							<option value="이벤트">이벤트</option>
							<option value="FAQ">FAQ</option>
						</select>
					</div>
					<div>
						<input type="submit" value="수정 완료"/>
					</div>
					
				</form>
			</div>
		</div>
		<%@include file="../footer.jsp"%>
		
		<script
			src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
			
		<script>
		
			$(document).ready(function(){
				
				
				$("#menu-delete").click(function(event){
					event.preventDefault(); // 링크를 클릭했을때 기본 동작인 요청 보내기를 하지 않음.
					
					var result = confirm("정말 삭제할까요?");
					
					if(result){//사용자가 YES를 선택했을 때
						location = $(this).attr("href");// 원래 이동하려고 했던 요청 주소로 요청 보내기
						
					}
					
					
				});
			});
			
		</script>
		
	</body>
</html>