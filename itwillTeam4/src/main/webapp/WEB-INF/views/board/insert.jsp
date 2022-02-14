<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    						
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 새 글</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" 
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
	</head>
	<body>
		<div class="container-fluid">
        	 <header class="jumbotron text-center">
				<h1>새 글 작성 페이지</h1>
			</header>
			
			<nav><!-- 메뉴 -->
			</nav> 
			
			<div>
				<form method="post">
					<div>
						<input type="text" name="board_title" placeholder="제목을 입력해 주세요" required autofocus/>
					</div>
					<div>
						<textarea rows="10" name="board_content" placeholder="내용 입력" required></textarea>
					</div>
					<div>
						<input type="text" name="board_userid" value="admin" required readonly/>
					</div>
					<div>
						<input type="text" name="board_tag" value="태그" required autofocus/>
					</div>
					<div>
						<input type="text" name="board_book_title" value="책 제목" required autofocus/>
					</div>
					<div>
						<input type="text" name="board_book_authors" value="저자" required autofocus/>
					</div>
					<div>
						<input type="text" name="board_book_pub" value="출판사" required autofocus/>
					</div>
					<div>
						<input type="text" name="board_book_img" value="표지" required autofocus/>
					</div>
					<div>
						<input type="submit" value="등록" />
					</div>
				</form>
			</div>
			
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>