<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>					
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>글 상세보기</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
	</head>
	<body>
		<div class="container-fluid">
	      <header class="text-center">
	         <h1>게시글 상세 보기 페이지</h1>
	      </header>
      	</div>

      <nav> <%-- 내비게이션 메뉴 --%>
         <!-- TODO 페이지 이동 메뉴 -->
         <ul>
            <li><a href="../">메인</a></li>
            <li><a href="./main">게시판 메인</a></li>
               <li><a href="./update?bno=${board.bno}">수정</a></li>
         </ul>
      </nav>

      <div> 
         <form>
            <div>
               <label for="board_title">글 제목</label> 
               <input type="text" id="board_title"
                  name="board_title" value="${board.board_title}" required autofocus readonly />
            </div>
            <div>
               <label for="board_content">글 내용</label>
               <textarea rows="5" id="board_content" name="board_content" required readonly>${board.board_content}</textarea>
            </div>
            <div>
               <label for="board_userid">작성자 아이디</label> <input type="text" id="board_userid"
                  name="board_userid" value="${board.board_userid}" required readonly />
            </div>
            <div>
               <label for="board_reg_date">최종 수정 시간</label>
               <fmt:formatDate value="${board.board_reg_date}"
                  pattern="yyyy/MM/dd HH/mm/ss" var="last_update_time" />
               <input type="text" id="board_reg_date" name="board_reg_date"
                  value="${last_update_time}" readonly />
            </div>
         </form>
      </div>
			<hr>
	<div>
		<input type="text" id="rtext" name="rtext" placeholder="댓글 입력" />
		<!--어드민 대신 ${signInUserId}-->
		<input type="text" id="userid" name="user_id" value= "어드민" readonly="readonly" />
		<button id="btn_create_reply">댓글 작성 완료</button>
		<button id="btn_sort_like">좋아요순</button>
		<button id="btn_sort_reg">최신순</button>
	</div>
	<hr>
	<div id="replies"></div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			var boardNo =${board.bno};
			var sort = 'all';
			function getReplies(sort){

			$.getJSON('/team4/replies/'+sort+'/' + boardNo, function(respText) {
				$('#replies').empty();
				
				var list = '';
				$(respText).each(function(){
					
					
				var date = new Date(this.reply_reg_date); // JavaScript Date 객체 생성
				var dateStr = date.toLocaleDateString() + ' ' + date.toLocaleTimeString();
            	list += '<div class="reply_item">'
         		   + '<input type="text" id="rno" name="rno" value="'
         		   + this.rno
         		   + '" readonly />'
         		   + '<input type="text" id="rtext" name="rtext" value="'
         		   + this.rtext
         		   +'" />'
         		   + '<input type="text" id="user_id" name="userid" value="'
         		   + this.user_id
         		   + '" readonly />'
         		   + '<input type="text" id="reply_like_cnt" name="replylikecnt" value="'
         		   + this.reply_like_cnt
         		   + '" readonly />'
         		   + '<input type="text" id="reg_date" name="regdate" value="'
         		   + dateStr
         		   + '" readonly />'
          		   + '<button class="reply_like">좋아요</button>'
         		  if (/*this.userid == '${signInUserId}'*/
         				  true
         				  ) { // 댓글 작성자 아이디와 로그인한 사용자 아이디가 같으면
              		list += '<button class="reply_update">수정</button>'
              			  + '<button class="reply_delete">삭제</button>';
              	}

         		   + '</div>';
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
			var replyText=$('#rtext').val();
			if(replyText==''){
				alert('댓글 내용을 입력하세요');
				$('#rtext').focus();
				return;				
			}
			var replier=$('#userid').val();
			
    		$.ajax({
    			url: '/team4/replies',
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
    		var rtext = $(this).prevAll('#rtext').val();
    		
    		$.ajax({
    			url: '/team4/replies/' + rno,
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
    				url: '/team4/replies/' + rno,
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
		
		
			});
	</script>
	</body>
</html>