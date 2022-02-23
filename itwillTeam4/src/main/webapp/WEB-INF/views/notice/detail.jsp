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
									</span>
							</div>
						</div>
					</div>
				</div>

				<div class="boxFooter boxFooter2">
					<div class="boxLike boxLike2">
						<img
							src="${pageContext.request.contextPath}/resources/img/like.png"
							alt="like" class="boxLikeImg">
						<p class="blc">&nbsp;${board.board_like_cnt }</p>
					</div>
					<div class="boxReply boxReply2">
						<img
							src="${pageContext.request.contextPath}/resources/img/reply.png"
							alt="reply" class="boxReplyImg">
						<p class="blc">&nbsp;${board.board_reply_cnt  }</p>
					</div>

					<c:if test="${signInUserCode == board.board_usercode}">
						<!-- 로그인 사용자 아이디와 글 작성자 아이디가 일치할 때만 수정 메뉴를 보여줌. -->
						<a href="./update?bno=${board.bno}"><button class="btnUpdate">수정</button></a>
						<a id="menu-delete" href="./delete?bno=${board.bno}"><button
								class="btnDelete">삭제</button></a>
					</c:if>

				</div>


				<div class="replyBox">
					<p class="replyCnt">댓글 ${board.board_reply_cnt }</p>

					<button id="btn_sort_like">좋아요순</button>
					<button id="btn_sort_reg">최신순</button>

					<div id="replies"></div>


					<input type="text" id="rtext1" name="rtext" class="replyInput"
						placeholder="댓글을 입력해주세요!" />
					<!--어드민 대신 ${signInUserId}-->
					<input type="hidden" id="userid" name="user_id"
						value='${signInUserId}' readonly="readonly" />
					<button class="btn_create">등록</button>
					<ul>

					</ul>
				</div>



			</div>
		</div>
	</div>







	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>