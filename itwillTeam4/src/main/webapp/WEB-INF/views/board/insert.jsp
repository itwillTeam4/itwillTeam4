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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board.css"
	type="text/css">
<script
	src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
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



				<input type="text" id="board_book_title_fake"
					placeholder="책 제목을 입력해주세요." required /> <input type="button"
					id="btn_book_search" name="btn_book_search" value="검색" />
				<div id="bookSubmitBtn" class="bookSubmitBtn">
					<p>등록</p>
				</div>



				<div>
					<input type="text" id="board_book_authors_fake" value=""
						placeholder="저자" required readonly />
				</div>
				<div>
					<input type="text" id="board_book_pub_fake" value=""
						placeholder="출판사" required readonly />
				</div>
				<div>
					<input type="hidden" id="board_book_img_fake" value="" required />
				</div>
				<div>
					<input type="text" id="board_book_tag_fake" value="" required />
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
						<span>${signInUserId}</span>님
					</p>
					<span>환영합니다.</span>
				</div>
				<ul class="comMenu">
					<li><a href="../board/?act=rlt">실시간 독서 모임 커뮤니티</a></li>
					<li><a href="../board/?act=my">나의 독서 모임 커뮤니티</a></li>
					<li><a href="../board/?act=free">자유로운 서평</a></li>
					<li><a href="#">공지사항/이벤트</a></li>

				</ul>
			</div>

			<div class="right-contents">
				<div id="right-top-wrapInsert">
					<p id="right-contents-title">글쓰기</p>

					<div>
						<input type="button" id="btn_book_modal" value="도서 검색">
					</div>
				</div>


				<div class="rightInput">

					<form method="post">


						<div>
							<input type="text" name="board_title" class="rightInputTitle"
								placeholder="제목을 입력해주세요." required autofocus />
						</div>
						<div>
							<textarea name="board_content" id="editor"
								placeholder="내용을 입력해주세요."></textarea>
						</div>

						<div>
							<input type="hidden" name="board_usercode"
								value="${signInUserCode}" required readonly />
						</div>



						<div id="book_info_real"></div>
						<div id="book_info2_real">

							<input type="hidden" id="board_book_title_real"
								name="board_book_title" required />





							<div>
								<input type="hidden" id="board_book_authors_real"
									name="board_book_authors" required />
							</div>
							<div>
								<input type="hidden" id="board_book_pub_real"
									name="board_book_pub" required />
							</div>
							<div>
								<input type="hidden" id="board_book_img_real"
									name="board_book_img" required />
							</div>
							<div>
								<input type="hidden" id="board_book_tag_real" name="board_tag"
									value="태그" required />
							</div>
							<div id="meetIdx">
								<input type="hidden" name="board_meet_idx" value="${userMeetIdx}"
									required readonly />
							</div>

						</div>
						<div>
							<input type="submit" class="btn_create" value="등록" />
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
	
	$("#bookModalClose").click(function(){
		
		$(".bookModalBG").fadeOut(300);
		$(".bookModal").fadeOut(300);
		
	});
	
	//var fakeToReal = document.getElementById("bookSubmitBtn");
	
	$(".bookSubmitBtn").click(function(){
		
		$(".bookModalBG").fadeOut(300);
		$(".bookModal").fadeOut(300);
		
		var fakeTitle = $("#board_book_title_fake").val();
		$("#board_book_title_real").val(fakeTitle);
		var fakeAuthors = $("#board_book_authors_fake").val();
		$("#board_book_authors_real").val(fakeAuthors);
		var fakePub = $("#board_book_pub_fake").val();
		$("#board_book_pub_real").val(fakePub);
		var fakeImg= $("#board_book_img_fake").val();
		$("#board_book_img_real").val(fakeImg);
		var fakeTag = $("#board_book_tag_fake").val();
		$("#board_book_tag_real").val(fakeTag);
		
				
				   
	});
	
	
	
	 	
	var n=0;
	var msg;
	$(document).ready(function() {
		$('#btn_book_search').click(function(event) {
			var title = $('#board_book_title_fake').val();
			$.ajax({
				method : "GET",
				url : "https://dapi.kakao.com/v3/search/book?target=title",
				data : {
					query : title,
					size:50
				},
				headers : {
					Authorization : "KakaoAK 3f1fb761122afdd0796567178c84f3dc"
				},
			success: function(info){
				msg=info;
				console.log(msg);
				if(msg.documents.lenght!=0){
				getBookInfo(n);
				}
				else {
					alert("도서 검색 실패!")
				}
			}
			})
		});
	
	});
	$('#btn_prev').click(function(){
		if(n>0){
			n--;
			getBookInfo(n);
		}
	});
	$('#btn_next').click(function(){
		if(n<msg.documents.length-1){
			n++;
			getBookInfo(n);
		}
	});
	function getBookInfo(n){
		var list_info='';
		$('.book_info').empty();	
		list_info +='<div>'
		+'<img src='+msg.documents[n].thumbnail+'/>'
		+'</div>'
		+'</div>';
		$('.book_info').html(list_info);
		$('#board_book_title_fake').val(msg.documents[n].title);
		$('#board_book_authors_fake').val(msg.documents[n].authors);
		$('#board_book_pub_fake').val(msg.documents[n].publisher);
		$('#board_book_img_fake').val(msg.documents[n].thumbnail);
		$('.book_info2').show();
		$('#btns').show();
		};
	</script>

	<script>
	 ClassicEditor
     .create( document.querySelector( '#editor' ), {
         // 제거 하고싶은 플러그인 (배열)
     } )
     .catch( error => {
         console.error( error );
     } );
    </script>

</body>
</html>