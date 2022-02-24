<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오 자유로운 서평</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

</head>
<body>
	<%@include file="../header.jsp"%>

	<div id="contentWrapFree">
		<div class="innerWrapFree">

			<div class="left-gnbFree">
				<div class="profile-box">
					<p>
						<span id="user">${signInUserId}</span>님
					</p>
					<span>환영합니다.</span>
				</div>
				<ul class="comMenu">
					<li><a href="?act=rlt" id="rlt_rink">실시간 독서 모임 커뮤니티</a></li>
					<li><a href="?act=my&MeetIdx=${userMeetIndex}" id="mymeet_rink">나의 독서 모임 커뮤니티</a></li>
					<li><a href="?act=free" class="on">자유로운 서평</a></li>
					<li><a href="./notice/main">공지사항/이벤트</a></li>

				</ul>
			</div>
		
			<div class="right-contentsFree">
				<div id="right-top-wrapFree">
					<p id="right-contents-title">자유로운 서평</p>

					<div id="writeImg">
						<a href="http://localhost:8181/team4/board/insert">
							<img src="${pageContext.request.contextPath}/resources/img/write.png" alt="write">
						</a>
					</div>
					<ul class="searchTapFree">
						<li><a href="?act=free&order=0">최신순</a></li>
						<li><a href="?act=free&order=3">추천순</a></li>
						<li><a href="?act=free&order=1">조회수순</a></li>
						<li><a href="?act=free&order=2">댓글순</a></li>
					</ul>
				</div>

				<div class="postBox">
					<c:forEach begin="0" end="9" step="1" var="board" items="${boardList }">
						<div class="box">
							<a href="./board/detail/${board.bno }">
								<div class="boxHeader">
									<div class="bookImg">
										<img src="${board.board_book_img}" alt="">
										<p class="bookImgTitle text-overflow">${board.board_book_title }</p>
									</div>
									<div class="postInfo">
										<p class="postTitle">${board.board_title }</p>
										<p class="postUser">${board.board_userid }<span> 멤버</span>
										</p>

										<p class="postRegDate">
											<fmt:formatDate value="${board.board_reg_date }" pattern="yyyy-MM-dd" />
										</p>
										<p class="postContent text-overflow-line3">${board.board_content}</p>
									</div>
								</div>
							</a>
							<div class="boxFooter">
								<div class="boxLike">
									<img src="${pageContext.request.contextPath}/resources/img/like.png" alt="like" class="boxLikeImg">
									<p>&nbsp;${board.board_like_cnt }</p>
								</div>
								<div class="boxReply">
									<img src="${pageContext.request.contextPath}/resources/img/reply.png" alt="reply" class="boxReplyImg">
									<p>&nbsp;${board.board_reply_cnt  }</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a href="?<c:if test="${order !=null }">
					order=${order}&
						</c:if>		act=${act}&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a href="?	<c:if test="${order !=null }">
					order=${order}&
						</c:if>act=${act }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a href="?<c:if test="${order !=null }">
					order=${order}&
						</c:if>act=${act }
						&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>

					</c:if>
				</div>
			</div>
		</div>
	</div>

	<%@include file="../footer.jsp"%>


	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
	
	
</body>
</html>