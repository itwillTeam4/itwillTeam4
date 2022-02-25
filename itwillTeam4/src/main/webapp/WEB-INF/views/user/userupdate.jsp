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

<link href="${pageContext.request.contextPath}/resources/css/meet.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/user.css"
	rel="stylesheet" type="text/css" />



<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">

</head>
<body>

	<%@include file="../header.jsp"%>



	<div class="contentWrapMeet">
		<div class="innerWrapMeet">


			<div class="rightInputTop">

				<h2>프로필 수정</h2>
			</div>
			<div class="applyInput">

				<form action="./userupdate" method="post">
					<div>
						<input type="hidden" value="${userUpdate.user_code}"
							id="user_code" name="user_code" />
					</div>
					<div>
						<input type="hidden" value="${userUpdate.user_nn}"
							id="user_nn_hid" name="user_nn_hid" />
					</div>


					<div class="applyInputForms">

						<div class="inputFormsLeft">
							<p>닉네임</p>
						</div>
						<div class="inputFormsRight userWidth">
							<input type="text" value="${userUpdate.user_nn}"
								class="applyInputText" maxlength="16" id="user_nn"
								name="user_nn" placeholder="닉네임 입력(최대 16자)" required autofocus />

						</div>
						<div class="valid_nn">사용 가능한 닉네임입니다.</div>
						<div class="invalid_nn">닉네임이 중복됐습니다.</div>
					</div>

					<div>
						<input type="hidden" value="${userUpdate.user_pwd}"
							id="user_pwd_hid" name="user_pwd_hid" />
					</div>


					<div class="applyInputForms bigForm">

						<div class="inputFormsLeft ">
							<p>비밀번호 변경</p>
						</div>
						<div class="pwdWrap">
							<div>
								<div class="inputFormsRight pwdMargin userWidth pwdfirst">

									<div>
										<input type="password" id="user_pwd_pre" name="user_pwd_pre"
											class="applyInputText" placeholder="현재 비밀번호 입력" required />

									</div>

								</div>
								<div class="nullbox"></div>
								<div class="invalid_pwd_pre">비밀번호가 틀렸습니다.</div>
							</div>
							<div class="comfirm_pwd">비밀번호를 입력해주세요.</div>
							<div>
								<div class="inputFormsRight pwdMargin userWidth">
									<div>
										<input type="password" id="user_pwd_ck" name="user_pwd_ck"
											class="applyInputText" placeholder="변경할 비밀번호" />
									</div>

								</div>
								<div class="inputFormsRight pwdMargin userWidth">
									<div>
										<input type="password" id="user_pwd" name="user_pwd"
											placeholder="변경할 비밀번호 확인" class="applyInputText" />

									</div>

								</div>
								<div class="invalid_pwd">비밀번호가 틀렸습니다.</div>
							</div>
						</div>


					</div>
				</form>
			</div>


			<div class="applyInputForms">

				<div class="inputFormsLeft">
					<p>독서 모임 정원</p>
				</div>
				<select name="meet_member_num" class="selectForm">
					<option value="3">3</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="8">8</option>
					<option value="10">10</option>
					<option value="12">12</option>
					<option value="15">15</option>
					<option value="18">18</option>
					<option value="20">20</option>
				</select>
			</div>

			<div class="applyInputForms">

				<div class="inputFormsLeft">
					<p>온라인/오프라인</p>
				</div>
				<div class="selectRadio">
					<div class="radio">
						<label style="margin-right: 84px;"><input type="radio"
							name="meet_on_or_off" value="1" checked>온라인</label>
					</div>
					<div class="radio">
						<label><input type="radio" name="meet_on_or_off" value="2">오프라인</label>
					</div>
				</div>
			</div>
			<div>
				<input type="hidden" name="meet_host_name" value="${signInUserId}"
					required />
			</div>
			<div>
				<input type="hidden" name="meet_host" value="${signInUserCode}"
					required readonly />
			</div>
			<div>
				<input type="hidden" name="meet_member_code"
					value="${signInUserCode}" required readonly />
			</div>
			<div>
				<input type="hidden" name="meet_join_num" value="1" required
					readonly />
			</div>




			<div class="applyInputForms bigbigForm">

				<div class="inputFormsLeft">
					<p>도서 선정</p>
				</div>
				<div class="book_info_div">
					<div class="book_info"></div>
					<div class="book_info2">



						<input type="text" id="meet_book_title"
							placeholder="책 제목을 입력해주세요." name="meet_book_title" required /> <input
							type="button" id="btn_book_search" name="btn_book_search"
							value="검색" />




						<div>
							<input type="text" id="meet_book_authors"
								name="meet_book_authors" value="" placeholder="저자" required
								readonly />
						</div>
						<div>
							<input type="text" id="meet_book_pub" name="meet_book_pub"
								value="" placeholder="출판사" required readonly />
						</div>
						<div>
							<input type="hidden" id="meet_book_img" name="meet_book_img"
								value="" required />
						</div>
						<div>
							<input type="hidden" id="meet_book_tag" name="meet_book_tag"
								value="" />
						</div>


					</div>


					<div id="btns" class="btns">
						<input type="button" id="btn_prev" class="searchBtn1"> <input
							type="button" id="btn_next" class="searchBtn2">
					</div>
				</div>
			</div>
			<div>
				<input type="submit" class="btn_create" value="등록" />
			</div>


		</div>






	</div>



	</div>







	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$(document).ready(function() {

			$('#user_nn').change(function(event) {
				var params_nn = {
					user_nn : $(this).val()
				};
				if ($('#user_nn_hid').val() == $('#user_nn').val()) {
					$('.valid_nn').show(); // valid div 보여줌.
					$('.invalid_nn').hide(); // valid div 없앰(display=none).
					$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
				} else {
					$.post('./checknn', params_nn, function(response) {
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
				}
			});

			$('#user_pwd_pre').change(function(event) {

				if ($('#user_pwd_hid').val() == $('#user_pwd_pre').val()) {
					$(".nullbox").show();
					$('.invalid_pwd_pre').hide(); // valid div 없앰(display=none).
					$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
				} else {
					$(".nullbox").hide();
					$('.invalid_pwd_pre').show(); // invalid div 보여줌.
					$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
				}

			});

			$('#user_pwd').change(function(event) {
				if ($('#user_pwd_ck').val() == $('#user_pwd').val()) {
					$(".nullbox").show();
					$('.invalid_pwd').hide(); // valid div 없앰(display=none).
					$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
				} else {
					$(".nullbox").hide();
					$('.invalid_pwd').show(); // invalid div 보여줌.
					$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
				}
			});

			$('#btn-complete').click(function() {
				var pwd = $('#user_pwd_pre').val();
				if ($('#user_pwd').val() == "") {
					$('#user_pwd').val(pwd);
				}
			});

			$('#btn-userdelete').click(function() {
				var result = window.confirm("정말로 회원 탈퇴를 하시겠습니까?")
			});

		});
	</script>

</body>
</html>