<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>team4Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container-fluid">
		<header class="text-center">
			<h1>새 글 작성 페이지</h1>

		</header>

		<nav>
			<!-- TODO: 페이지 이동 메뉴 -->


		</nav>



		<div>
			<!-- 입력 양식 -->
			<form method="post"> <!-- /board/insert POST 방식 전송  -->
				<div>
					<input type="text" name="notice_title" placeholder="제목 입력" required
					autofocus>
				</div>
				<div>
				
					<textarea rows="5" name="notice_content" placeholder="내용 입력" required ></textarea>
				</div>
				
				<div>
					<select name="notice_category">
						<!-- TODO: category 고민하기 데이터베이스 수정해야할수도 -->
						<option value="1">공지사항</option>
						<option value="2">이벤트</option>
						<option value="3">FAQ</option>
					</select>
				
				</div>
				<div>
					<input type="submit" value="작성 완료">
				</div>
			</form>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>