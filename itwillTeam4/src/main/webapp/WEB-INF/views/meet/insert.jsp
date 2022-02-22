<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 모임 개설</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
<%@include file="../header.jsp"%>
	<div class="container-fluid">
		<header class="jumbotron text-center">
			<h1>새 모임 개설 페이지</h1>
		</header>

		<nav>
			<!-- 메뉴 -->
		</nav>

		<div>
			<form method="post">
				<div>
					<input type="text" name="meet_name" placeholder="모임 이름" required autofocus />
				</div>
				<div>
					<textarea rows="10" name="meet_intro" placeholder="모임 인트로" required></textarea>
				</div>
				<div class="form-eles">
					<dl>
						<dt>
						"독서 모임테마"
						</dt>
						<dd>
							<select name="meet_theme" valch="yes" msg="독서 모임 테마를 선택하세요">
								<option value>선택하세요</option>
								<option value="책수다형">책수다형</option>
								<option value="독서토론형">독서토론형</option>
								<option value="덕후형">덕후형</option>
								<option value="생활습관 개선형">생활습관 개선형</option>
								<option value="낭독형">낭독형</option>
								<option value="챌린지형">챌린지형</option>
								<option value="스터디형">스터디형</option>
							</select>
						</dd>
					</dl>
				</div>
				
				<div class="form-eles">
					<dl>
						<dt>
						"독서 모임 인원수"
						</dt>
						<dd>
							<select name="meet_member_num" valch="yes" msg="모임 인원수를 설정하세요">
								<option value>선택하세요</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
							</select>
						</dd>
					</dl>
				</div>
				
				<div class="form-eles">	
					<dl>
						<dt>
						"온/오프라인"
						</dt>
						<dd>
							<div class="selradio">
								<label style="margin-right:84px;">
									<input type="radio" name="meet_on_or_off" value="1">
									"온라인"
								</label>
								<label>
									<input type="radio" name="meet_on_or_off" value="2">
									"오프라인"
								</label>
							</div>
						</dd>
					</dl>
				</div>
				<div>
					<input type="text" id="meet_host_name" name="meet_host_name" value="" required />
				</div>
				<div>
					<input type="text" id="meet_book_title" name="meet_book_title" value="" required />
				</div>
				<div>
					<input type="text" id="meet_book_authors" name="meet_book_authors" value="" required />
				</div>
				<div>
					<input type="text" id="meet_book_pub" name="meet_book_pub" value="" required />
				</div>
				<div>
					<input type="text" id="meet_book_img" name="meet_book_img" value="" required />
				</div>
				
				

				<div>
					<input type="submit" value="게시" />
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