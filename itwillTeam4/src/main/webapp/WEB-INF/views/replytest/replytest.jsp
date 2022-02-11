<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>reply test</h1>
	</div>
	<hr>
	<div>
		<input type="text" id="rtext" name="rtext" placeholder="댓글 입력" />
		<input type="text" id="userid" name="user_id" value="admin 추후수정" readonly="readonly" />
		<button id="btn_create_reply">댓글 작성 완료</button>
	</div>
	<hr>
	<div id="replies"></div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			var boardNo = 4;
			function getAllReplies(){

			$.getJSON('/team4/replies/all/' + boardNo, function(respText) {
				$('#replies').empty();
				
				var list = '';
				$(respText).each(function(){
					
					
				var date = new Date(this.reply_reg_date); // JavaScript Date 객체 생성
				var dateStr = date.toLocaleDateString() + ' ' + date.toLocaleTimeString();
            	list += '<div>'
         		   + '<input type="text" id="rno" name="rno" value="'
         		   + this.rno
         		   + '" readonly />'
         		   + '<input type="text" id="rtext" name="rtext" value="'
         		   + this.rtext
         		   +'" />'
         		   + '<input type="text" id="user_id" name="userid" value="'
         		   + this.user_id
         		   + '" readonly />'
         		   + '<input type="text" id="reg_date" name="regdate" value="'
         		   + dateStr
         		   + '" readonly />'
         		   + '</div>';
				console.log("done");
				});
            // 완성된 HTML 문자열(list)를 div[id="replies"]의 하위 요소로 추가
            $('#replies').html(list);				
         });

				
			}
getAllReplies();		
		});
	</script>
</body>
</html>