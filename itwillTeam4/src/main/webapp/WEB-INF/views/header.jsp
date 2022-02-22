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
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
	<div id="wrap">
		<div id="header" class="content">
			<h1 id="logo">
				<a href="http://localhost:8181/team4"> <!-- 서버구동하고 다시 확인해야함 -->
					<img
					src="${pageContext.request.contextPath}/resources/img/logo2.png"
					alt="logo" />
				</a>
			</h1>


			<ul id="navui1" class="menu">


				<li id="board"><a href="http://localhost:8181/team4/board">커뮤니티</a></li>
				<li id="notice"><a
					href="http://localhost:8181/team4/notice/main">공지사항</a></li>

			</ul>



			<div>
				<!-- 검색 기능 UI -->
				<form action="search" method="get" id="searchWrap">
					<input type="text" name="keyword"
						placeholder="함께 읽고 싶은 책이나 독서모임을 검색해보세요." required>
					<button type="submit">
						<img
							src="${pageContext.request.contextPath}/resources/img/search.png"
							alt="search">
					</button>

				</form>
			</div>



			<a href="./search" id="meetSearch">
				<div id="meet">
					<h2>독서모임 찾기</h2>
				</div>
			</a>


			<ul id="navui2" class="menu">




				<c:if test="${empty signInUserId}">

					<li id="login">
						<!--  <a href="./user/signin">-->로그인
					</li>
					
				</c:if>
				<c:if test="${not empty signInUserId }">
					<li id="logout"><a href="http://localhost:8181/team4/user/signout">로그아웃</a></li>
					<li id="logout"><a href="http://localhost:8181/team4/user/mypage">마이페이지</a></li>
				</c:if>

			</ul>



		</div>
	</div>
	<div class="modalBackground">
		<div id="loginModal">
			<p>로그인</p>

			<div id="loginClose" class="close">
				<img
					src="${pageContext.request.contextPath}/resources/img/close.png"
					alt="close">
			</div>
			<form action="http://localhost:8181/team4/user/signin" method="post">
				<div id="loginInput">
					<div class="loginInputForm">
						<input type="text" name="user_id" id="idInput" placeholder="아이디(이메일) 입력"
							autofocus required>

					</div>
					<div class="loginInputForm">
						<input type="password" name="user_pwd" placeholder="비밀번호 입력"
							autofocus required>
					</div>

					<div>
						<input type="submit" id = "login_confirm" value="로그인" />
					</div>
				</div>
			</form>

			<span id="callRegister">회원가입</span>

		</div>


		<div id="registerModal">
			<p>회원가입</p>

			<div id="registerClose" class="close">
				<img
					src="${pageContext.request.contextPath}/resources/img/close.png"
					alt="close">
			</div>
			<form action="http://localhost:8181/team4/user/register" method="post">
				<div id="registerInput">
					<div class="emailInput">
						<input type="email" id="user_id" name="user_id"
							placeholder="abc@abc.com" required autofocus />
						<div class="valid_id">사용 가능한 아이디입니다.</div>
						<div class="invalid_id">아이디가 중복됐습니다.</div>
					</div>
					<div class="pwdInput">
						<div>
							<input type="password" id="user_pwd_ck" name="user_pwd_ck"
								placeholder="비밀번호 입력" required />
						</div>

						<div>
							<input type="password" id="user_pwd" name="user_pwd"
								placeholder="비밀번호 확인" required />
							<div class="invalid_pwd">비밀번호가 틀렸습니다.</div>
						</div>
					</div>


					<div class="nnInput">
						<input type="text" id="user_nn" name="user_nn"
							placeholder="닉네임 입력" required />
						<div class="valid_nn">사용 가능한 닉네임입니다.</div>
						<div class="invalid_nn">닉네임이 중복됐습니다.</div>
					</div>

					<div class="nameInput">
						<input type="text" name="user_name" placeholder="이름 입력" required />
					</div>


					<div class="phoneInput">
						<input type="text" name="user_phone"
							placeholder="전화번호 입력 (01012345678)" required />
					</div>


					<div class="tagInput">
						<input type="text" name="user_tag"
							placeholder="유저 태그 입력 (#편안한 #로맨스 #소설)" />
					</div>


					<div>
						<input type="submit" id="btn-complete" value="회원가입" />
					</div>
				</div>
			</form>


		</div>
	</div>





	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	<script>
	

	$("#login").click(function() {
		$(".modalBackground").fadeIn(300);
		$("#loginModal").fadeIn(300);
	
	});

	$("#loginClose").click(function() {
		$(".modalBackground").fadeOut(300);
		$("#loginModal").fadeOut(300);
	});

	$("#callRegister").click(function() {
		$("#registerModal").fadeIn(300);

	});

	$("#registerClose").click(function() {
		$("#registerModal").fadeOut(300);
	});
	
	
	
		$(document).ready(function() {
			

			// userid 아이디를 갖는 HTML 요소(input)에 변화가 생겼을 때 호출될 이벤트 리스너 콜백 함수를 등록. 
			$('#user_id').change(function(event) {
				// Ajax를 이용해서 아이디 중복 체크
				var params = {
					user_id : $(this).val()
				};
				// $.post(Ajax 요청 주소, 요청 파라미터, 응답 성공일 때 실행될 콜백 함수);
				$.post('./user/checkid', params, function(response) {
					if (response == 'valid_id') { // 사용 가능한 아이디(DB에 없는 아이디)인 경우
						$('.valid_id').show(); // valid div 보여줌.
						$('.invalid_id').hide(); // valid div 없앰(display=none).
						$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
					} else {
						$('.valid_id').hide(); // valid div 없앰(display=none).
						$('.invalid_id').show(); // invalid div 보여줌.
						$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
					}
				});
			});
			
			

			$('#user_nn').change(function(event) {
				var params_nn = {
					user_nn : $(this).val()
				};
				$.post('./user/checknn', params_nn, function(response) {
					if (response == 'valid_nn') { // 사용 가능한 아이디(DB에 없는 아이디)인 경우
						$('.valid_nn').show(); // valid div 보여줌.
						$('.invalid_nn').hide(); // valid div 없앰(display=none).
						$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
					} else {
						$('.valid_nn').hide(); // valid div 없앰(display=none).
						$('.invalid_nn').show(); // invalid div 보여줌.
						$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
					}
				});
			});

			$('#user_pwd').change(function(event) {
				if ($('#user_pwd_ck').val() == $('#user_pwd').val()) {
					$('.invalid_pwd').hide(); // valid div 없앰(display=none).
					$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
				} else {
					$('.invalid_pwd').show(); // invalid div 보여줌.
					$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
				}
			});

			// 회원가입 성공, 실패 메시지
			$('#btn-complete').click(function(event){
				alert("회원가입 성공! 반갑습니다*^^*");
			});
			
			if (location.href == "http://localhost:8181/team4/?register=fail"){
				if ('${register}' == false) {
					$("#registerModal").fadeIn(300);
					alert("회원가입 정보를 다시 입력해 주세요.");
				} 
			}
			
			// 로그인 실패
			if (location.href == "http://localhost:8181/team4/?signin=fail"){
				if ('${signin}' == false) {
					$(".modalBackground").fadeIn(300);
					$("#loginModal").fadeIn(300);
					alert("로그인 정보를 다시 입력해 주세요.");
				}
			}
			
		
		});
	</script>
</body>
</html>