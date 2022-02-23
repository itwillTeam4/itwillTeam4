<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>			 		
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>글 수정</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
	</head>
	<body>
	<%@include file="../header.jsp"%>
		<div class="container-fluid">
	      <header class="text-center">
	         <h1>게시글 수정 페이지</h1>
	      </header>
      	</div>

      <nav> <%-- 내비게이션 메뉴 --%>
         <!-- TODO 페이지 이동 메뉴 -->
         <ul>
            <li><a href="../">메인</a></li>
            <li><a href="./main">게시판 메인</a></li>
               <li><a id="menu-delete" href="./delete?bno=${board.bno}">삭제</a></li>
         </ul>
      </nav>

      <div> 
         <form action="./update" method="post">
         	<div style="display: none;">
						<input type="number" name="bno" value="${board.bno}" readonly>
			</div>
            <div>
               <label for="board_title">글 제목</label> 
               <input type="text" id="board_title"
                  name="board_title" value="${board.board_title}" required autofocus/>
            </div>
            <div>
               <label for="board_content">글 내용</label>
               <textarea rows="5" id="board_content" name="board_content" required>${board.board_content}</textarea>
            </div>
            <div>
               <label for="board_userid">작성자 아이디</label> 
               <input type="text" id="board_userid"
                  name="board_userid" value="${board.board_userid}" required readonly />
            </div>
            <div>
               <label for="board_book_title">책 제목</label>
               <input type="text" id="board_book_title"
                  name="board_book_title" value="${board.board_book_title}" required/>
               <input type="button" id="btn_book_search" name="btn_book_search" value="다시 검색하기" />
            </div>
            <div id="book_info"></div>
			<div id="book_info2">
				<div>
					<input type="text" id="board_book_authors" name="board_book_authors" value="${board.board_book_authors}" required />
				</div>
				<div>
					<input type="text" id="board_book_pub" name="board_book_pub" value="${board.board_book_pub}" required />
				</div>
				<div>
					<input type="text" id="board_book_img" name="board_book_img" value="${board.board_book_img}" required style="display: none;"/>
				</div>
				<div>
					<input type="text" name="board_tag" value="${board.board_tag}" required  />
				</div>
			</div>
			<div id="btns">
				<input type="button" id="btn_prev" value="이전검색">
				<input type="button" id="btn_next" value="다음검색">
			</div>
            <div>
               <input type="submit" value="수정">
            </div>
            
         </form>
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
