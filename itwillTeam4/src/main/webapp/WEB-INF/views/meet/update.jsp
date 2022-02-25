<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor.js"></script>
</head>
<body>
	<%@include file="../header.jsp"%>





	<div class="bookModalBG">
		<div class="bookModal">
			<div id="bookModalClose" class="close">
				<img
					src="${pageContext.request.contextPath}/resources/img/close.png"
					alt="close">
			</div>

			<div class="book_info"></div>
			<div class="book_info2">



				<input type="text" id="meet_book_title_fake"
					placeholder="책 제목을 입력해주세요."  value="${meet.meet_book_title}" required  /> <input type="button"
					id="btn_book_search" name="btn_book_search" value="검색" />
				<div id="bookSubmitBtn" class="bookSubmitBtn">
					<p>등록</p>
				</div>



				<div>
					<input type="text" id="meet_book_authors_fake"  value="${meet.meet_book_authors}" 
						placeholder="저자" required readonly />
				</div>
				<div>
					<input type="text" id="meet_book_pub_fake" value="${meet.meet_book_pub }"
						placeholder="출판사" required readonly />
				</div>
				<div>
					<input type="hidden" id="meet_book_img_fake" value="${meet.meet_book_img}" required />
				</div>


			</div>


			<div id="btns" class="btns">
				<input type="button" id="btn_prev" class="searchBtn1"> <input
					type="button" id="btn_next" class="searchBtn2">
			</div>
		</div>



	</div>


	<div id="contentWrap">
		<div class="innerWrap">

			<div class="left-gnb">
				<div class="profile-box">
					<p>
						<span>${signInUserId}</span>
					</p>
					<span>환영합니다.</span>
				</div>
			</div>

			<div class="right-contents">
				<div id="right-top-wrapInsert">
					<p id="right-contents-title">글 수정</p>

					<div>
						<input type="button" id="btn_book_modal" value="도서 검색">
					</div>
				</div>


				<div class="rightInput">

					<form action="./update?meet_idx=${meet.meet_idx}" method="post">

						<div style="display: none;">
							<input type="number" name="meet_idx" value="${meet.meet_idx}" readonly>
						</div>

						<div>
							<input type="text" id="meet_name" name="meet_name"
								class="rightInputTitle" placeholder="제목을 입력해주세요." value="${meet.meet_name}" required
								autofocus />
						</div>
						<div>
							<textarea name="meet_intro" id="meet_intro"
								placeholder="내용을 입력해주세요.">${meet.meet_intro}</textarea>
						</div>
						
						<div class="applyInputForms">
							<div class="inputFormsLeft">
								<p>독서 모임 테마</p>
							</div>	

							<select name="meet_theme" class="selectForm">
								<option value="책수다형">책수다형</option>
								<option value="독서토론형">독서토론형</option>
								<option value="덕후형">덕후형</option>
								<option value="생활습관 개선형">생활습관 개선형</option>
								<option value="낭독형">낭독형</option>
								<option value="챌린지형">챌린지형</option>
								<option value="스터디형">스터디형</option>
							</select>
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
							<input type="hidden" id="meet_host" name="meet_host"
								value="${signInUserCode}" required readonly />
						</div>

						<div>
							<input type="hidden" name="meet_host_name" value="${meet.meet_host_name}"
								required readonly />
						</div>


						<div id="book_info2">

							<input type="text" id="meet_book_title" class="meet_book_title"
								name="meet_book_title"  value="${meet.meet_book_title}" required readonly />





							<div>
								<input type="hidden" id="meet_book_authors"
									name="meet_book_authors"  value="${meet.meet_book_authors}" required />
							</div>
							<div>
								<input type="hidden" id="meet_book_pub" name="meet_book_pub" value="${meet.meet_book_pub}"
									required />
							</div>
							<div>
								<input type="hidden" id="meet_book_img" name="meet_book_img"  value="${meet.meet_book_img}"
									required />
							</div>
							<div id="meetIdx">
								<input type="hidden" name="meet_meet_idx"
									value="${userMeetIdx}" required readonly />
							</div>

						</div>
						<div>
							<input type="submit" class="btn_create" value="수정" />
						</div>

					</form>
				</div>
			</div>






		</div>



	</div>






	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript">
		//$("#editor").prop('required',true); 

		$("#btn_book_modal").click(function() {
			$(".bookModalBG").fadeIn(300);
			$(".bookModal").fadeIn(300);

		});

		$("#bookModalClose").click(function() {

			$(".bookModalBG").fadeOut(300);
			$(".bookModal").fadeOut(300);

		});

		//var fakeToReal = document.getElementById("bookSubmitBtn");

		$(".bookSubmitBtn").click(function() {

			$(".bookModalBG").fadeOut(300);
			$(".bookModal").fadeOut(300);

			var fakeTitle = $("#meet_book_title_fake").val();
			$("#meet_book_title").val(fakeTitle);
			var fakeAuthors = $("#meet_book_authors_fake").val();
			$("#meet_book_authors").val(fakeAuthors);
			var fakePub = $("#meet_book_pub_fake").val();
			$("#meet_book_pub").val(fakePub);
			var fakeImg = $("#meet_book_img_fake").val();
			$("#meet_book_img").val(fakeImg);

		});

		var n = 0;
		var msg;
		$(document)
				.ready(
						function() {
							$('#btn_book_search')
									.click(
											function(event) {
												var title = $(
														'#meet_book_title_fake')
														.val();
												$
														.ajax({
															method : "GET",
															url : "https://dapi.kakao.com/v3/search/book?target=title",
															data : {
																query : title,
																size : 50
															},
															headers : {
																Authorization : "KakaoAK 3f1fb761122afdd0796567178c84f3dc"
															},
															success : function(
																	info) {
																msg = info;
																console
																		.log(msg);
																if (msg.documents.lenght != 0) {
																	getBookInfo(n);
																} else {
																	alert("도서 검색 실패!")
																}
															}
														})
											});

						});
		$('#btn_prev').click(function() {
			if (n > 0) {
				n--;
				getBookInfo(n);
			}
		});
		$('#btn_next').click(function() {
			if (n < msg.documents.length - 1) {
				n++;
				getBookInfo(n);
			}
		});
		function getBookInfo(n) {
			var list_info = '';
			$('.book_info').empty();
			list_info += '<div>' + '<img src='+msg.documents[n].thumbnail+'/>'
					+ '</div>' + '</div>';
			$('.book_info').html(list_info);
			$('#meet_book_title_fake').val(msg.documents[n].title);
			$('#meet_book_authors_fake').val(msg.documents[n].authors);
			$('#meet_book_pub_fake').val(msg.documents[n].publisher);
			$('#meet_book_img_fake').val(msg.documents[n].thumbnail);
			$('.book_info2').show();
			$('#btns').show();
		};
	</script>
	<script>
		CKEDITOR.replace('meet_intro');
	</script>




</body>
</html>
