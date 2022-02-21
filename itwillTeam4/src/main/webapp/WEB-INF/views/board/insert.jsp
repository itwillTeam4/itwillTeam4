<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 새 글</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
<%@include file="../header.jsp"%>
	<div class="container-fluid">
		<header class="jumbotron text-center">
			<h1>새 글 작성 페이지</h1>
		</header>

		<nav>
			<!-- 메뉴 -->
		</nav>

		<div>
			<form method="post">
				<div>
					<input type="text" name="board_title" placeholder="제목을 입력해 주세요" required autofocus />
				</div>
				<div>
					<textarea rows="10" name="board_content" placeholder="내용 입력" required></textarea>
				</div>
				<div>
					<input type="text" name="board_userid" value="${signInUserId}" required readonly />
				</div>
				<div>
					<input type="text" id="board_book_title" name="board_book_title" value="책 제목" required autofocus />
					<input type="button" id="btn_book_search" name="btn_book_search" value="검색하기" />
				</div>
				<div id="book_info"></div>
				<div id="book_info2">
					<div>
						<input type="text" id="board_book_authors" name="board_book_authors" value="" required />
					</div>
					<div>
						<input type="text" id="board_book_pub" name="board_book_pub" value="" required />
					</div>
					<div>
						<input type="text" id="board_book_img" name="board_book_img" value="" required style="display: none;"/>
					</div>
					<div>
						<input type="text" name="board_tag" value="태그" required  />
					</div>
					<div id="meetIdx">
					<input type="text" name="board_meet_idx" value="${userMeetIdx}" required readonly/>
					</div>
				</div>
				<div id="btns">
					<input type="button" id="btn_prev" value="이전검색">
					<input type="button" id="btn_next" value="다음검색">
				</div>
				<div>
					<input type="submit" value="등록" />
				</div>
			</form>
		</div>

	</div>
<%@include file="../footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		var n=0;
		var msg;
		$(document).ready(function() {
			$('#btns').hide();
			$('#book_info2').hide();
			$('#meetIdx').hide();
			$('#btn_book_search').click(function(event) {
				var title = $('#board_book_title').val();
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
			$('#book_info').empty();	
			list_info +='<div>'
			+'<img src='+msg.documents[n].thumbnail+'/>'
			+'</div>'
			+'</div>';
			$('#book_info').html(list_info);
			$('#board_book_title').val(msg.documents[n].title);
			$('#board_book_authors').val(msg.documents[n].authors);
			$('#board_book_pub').val(msg.documents[n].publisher);
			$('#board_book_img').val(msg.documents[n].thumbnail);
			$('#book_info2').show();
			$('#btns').show();
			};
	</script>
</body>
</html>