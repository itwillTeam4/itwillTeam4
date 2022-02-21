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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board.css"
	type="text/css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">

</head>
<body>
	<%@include file="../header.jsp"%>




	<div id="contentWrap">
		<div class="innerWrap">

			<div class="left-gnbDetail">
				<div class="profile-box">
					<p>
						<span>${signInUserId}</span>님
					</p>
					<span>환영합니다.</span>
				</div>
				<ul class="comMenu">
					<li><a href="#">실시간 독서 모임 커뮤니티</a></li>
					<li><a href="#">나의 독서 모임 커뮤니티</a></li>
					<li><a href="#">자유로운 서평</a></li>
					<li><a href="#">공지사항/이벤트</a></li>

				</ul>
			</div>



			<div class="right-contentsDetail ">

				<div class="detailTop">
					<div class="detailTopWrap">
						<p class="detailTopA">서평</p>
						<p class="detailTopTitle">${board.board_title }</p>
						<p class="detailTopUser">${board.board_userid }
							<span>멤버</span>
						</p>
						<p class="detailTopDate">
							<fmt:formatDate value="${board.board_reg_date }"
								pattern="yyyy-MM-dd hh:mm:ss" />
						</p>
					</div>


				</div>
				<div class="detailContentWrap">
					<p class="detailContent">${board.board_content }</p>
					<div class="detailBookInfo">
						<img src="${board.board_book_img }" alt="bookImg">
						<div class="detailBookInfos">
							<div>
								<p>${board.board_book_title }</p>
								<span>${board.board_book_authors } /
									${board.board_book_pub}
									</p>
							</div>
						</div>
					</div>
				</div>

				<div class="boxFooter boxFooter2">
					<div class="boxLike boxLike2">
						<img
							src="${pageContext.request.contextPath}/resources/img/like.png"
							alt="like" class="boxLikeImg">
						<p>&nbsp;${board.board_like_cnt }</p>
					</div>
					<div class="boxReply boxReply2">
						<img
							src="${pageContext.request.contextPath}/resources/img/reply.png"
							alt="reply" class="boxReplyImg">
						<p>&nbsp;${board.board_reply_cnt  }</p>
					</div>
				</div>


				<div class="replyBox">
					<p class="replyCnt">댓글 ${board.board_reply_cnt }</p>
					
					<button id="btn_sort_like">좋아요순</button>
					<button id="btn_sort_reg">최신순</button>
					
					<div id="replies"></div>
					
					
					<input type="text" id="rtext1" name="rtext" class="replyInput" placeholder="댓글을 입력해주세요!" />
					<!--어드민 대신 ${signInUserId}-->
					<input type="hidden" id="userid" name="user_id"
						value='${signInUserId}' readonly="readonly" />
					<button id="btn_create_reply">등록</button>
					
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
	$(document).ready(function() {
		var boardNo =${board.bno};
		var sort = 'all';
		function getReplies(sort){
		$.getJSON('http://localhost:8181/team4/replies/'+sort+'/' + boardNo, function(respText) {
			$('#replies').empty();
			
			var list = '';
			$(respText).each(function(){
				
				
			var date = new Date(this.reply_reg_date); // JavaScript Date 객체 생성
			var dateStr = date.toLocaleDateString() + ' ' + date.toLocaleTimeString();
        	list += '<div class="reply_item">'
        		+'<input type="hidden" id="rno" name="rno" value="'
      		   + this.rno
      		   + '" readonly />'
        		+ '<p id="user_id" name="userid">'
      		   + this.user_id
      		   + '</p>'
     		   + '<p id="reg_date" name="regdate">'
     		   + dateStr
     		   + '</p>'
     		   + '<div class="rtextBox"><input type="text" class="reply_text" id="rtext'+this.rno+'" name="rtext" value="'
     		   + this.rtext
     		   +'" /></div>'
     		   +'<div class="replyLikeBox">'
     		   + '<img src="${pageContext.request.contextPath}/resources/img/like.png"'
     		   +'alt="like" class="boxLikeImg">'
     		   + '<span id="reply_like_cnt" name="replylikecnt">'
     		   + this.reply_like_cnt
     		   + '</span> </div>'
      		   + '<button class="reply_like replyI">좋아요</button>';
     		  if ( this.user_id == $('#userid').val()
     				  ) {
          		list += '<button class="reply_update replyI">수정</button>'
          			  + '<button class="reply_delete replyI">삭제</button>';
          	}
     		   list+= '</div>';
			console.log("done");
			});
        $('#replies').html(list);				
     });				
		}
	getReplies(sort);		
	
	$('#btn_sort_like').click(function(event){
		sort='like';
		getReplies(sort);
	});
	$('#btn_sort_reg').click(function(event){
		sort='all';
		getReplies(sort)	
	});
	$('#btn_create_reply').click(function (event){
		var replyText=$('#rtext1').val();
		if(replyText==''){
			alert('댓글 내용을 입력하세요');
			$('#rtext1').focus();
			return;				
		}
		var replier=$('#userid').val();
		
		$.ajax({
			url: 'http://localhost:8181/team4/replies/',
			type: 'POST',
			headers: {
				'Content-Type': 'application/json',
				'X-HTTP-Method-Override': 'POST'
			},
			data: JSON.stringify({
				'bno': boardNo,
				'rtext': replyText,
				'user_id': replier
			}),
			success: function (resp) {
				console.log(resp);
				$('#rtext').val('');
				getReplies(sort);  
			}
		});
	});
	$('#replies').on('click', '.reply_item .reply_update', function () {
		
		var rno = $(this).prevAll('#rno').val();
		console.log(rno);
		var rtext = $('#rtext'+rno).val();
		console.log(rtext);
		
		$.ajax({
			url: 'http://localhost:8181/team4/replies/' + rno,
			type: 'PUT',
			headers: {
				'Content-Type': 'application/json',
				'X-HTTP-Method-Override': 'PUT'
			},
			data: JSON.stringify({'rtext': rtext}),
			success: function () {
				alert(rno + ' 댓글 수정 성공!');
				getReplies(sort); // 댓글 목록 업데이트
			}
		});
	});
	
	$('#replies').on('click', '.reply_item .reply_delete', function (event) {
		var rno = $(this).prevAll('#rno').val();
		var result = confirm(rno + '번 댓글을 정말 삭제할까요?');
		if (result) { // 확인(Yes) 버튼을 클릭했을 때
			$.ajax({
				url: 'http://localhost:8181/team4/replies/' + rno,
				type: 'DELETE',
				headers: {
					'Content-Type': 'application/json',
					'X-HTTP-Method-Override': 'DELETE'
				},
				success: function () {
					alert(rno + '번 댓글 삭제 성공!');
					getReplies(sort);
				}
			});
		}
	});
	$("#replies").on('click','.reply_item .reply_like', function(event){
		var rno = $(this).prevAll('#rno').val();
		var user=$('#userid').val();
		var result = confirm('좋아요? 좋냐고');
		if (result){
			$.ajax({
			url: 'http://localhost:8181/team4/replies/'+rno,
			type: 'POST',
				headers: {
					'Content-Type': 'application/json',
					'X-HTTP-Method-Override': 'POST'
			},
					data: JSON.stringify({'user_id':user}),
			  	
			success: function () {
				getReplies(sort); // 댓글 목록 업데이트
				alert(rno + ' 좋아요 성공!');
				},
			error: function(){
				alert(rno + ' 좋아요 실패!');
			}
			});
		}
	});
	
		});
	</script>
</body>
</html>