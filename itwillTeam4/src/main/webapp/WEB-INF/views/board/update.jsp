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
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>