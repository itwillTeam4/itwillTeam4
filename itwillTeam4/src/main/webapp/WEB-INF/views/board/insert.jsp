<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 새 글</title>

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
					<li><a href="#" class="on">공지사항/이벤트</a></li>

				</ul>
			</div>

			<div class="right-contents">
				<div id="right-top-wrap">
					<p id="right-contents-title">글쓰기</p>

				</div>


				<div class="rightText">
					<textarea rows="30" cols="30" name="content" id="editor"></textarea>
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