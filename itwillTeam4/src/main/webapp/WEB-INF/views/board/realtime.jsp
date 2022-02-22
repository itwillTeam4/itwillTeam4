<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오 자유로운 서평</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link href="${pageContext.request.contextPath}/resources/css/board.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="../header.jsp"%>

	<div id="contentWrapFree">
		<div class="innerWrapFree">

			<div class="left-gnbFree">
				<div class="profile-box">
					<p>
						<span>${signInUserId}</span>님
					</p>
					<span>환영합니다.</span>
				</div>
				<ul class="comMenu">
					<li><a href="?act=rlt">실시간 독서 모임 커뮤니티</a></li>
					<li><a href="?act=my" class="on">나의 독서 모임 커뮤니티</a></li>
					<li><a href="?act=free">자유로운 서평</a></li>
					<li><a href="./notice/main">공지사항/이벤트</a></li>

				</ul>
			</div>

			<div class="right-contentsFree">
				<div id="right-top-wrapFree">
					<p id="right-contents-titleMymeet">나의 독서 모임 커뮤니티</p>
					<div class="mymeetWrap">
						<ul>
							<li><a href="">
									<div class="info">
										<p class="meetTitle text-overflow note-title">테스트제목</p>
										<p class="meetTheme">테스트테마</p>
										<div class="status">
											<span class="name">이름테스트</span>
											<p class="meetMember">
												<!-- el -->
												명 참여중
											</p>
										</div>

									</div>
									<div id="infoImgBox">
										<img
											src="${pageContext.request.contextPath}/resources/img/com01.png"
											alt="com01" class="infoImg">
									</div>

							</a></li>
							
							<li><a href="">
									<div class="info">
										<p class="meetTitle text-overflow note-title">테스트제목</p>
										<p class="meetTheme">테스트테마</p>
										<div class="status">
											<span class="name">이름테스트</span>
											<p class="meetMember">
												<!-- el -->
												명 참여중
											</p>
										</div>

									</div>
									<div id="infoImgBox">
										<img
											src="${pageContext.request.contextPath}/resources/img/com01.png"
											alt="com01" class="infoImg">
									</div>

							</a></li>
							
							<li><a href="">
									<div class="info">
										<p class="meetTitle text-overflow note-title">테스트제목</p>
										<p class="meetTheme">테스트테마</p>
										<div class="status">
											<span class="name">이름테스트</span>
											<p class="meetMember">
												<!-- el -->
												명 참여중
											</p>
										</div>

									</div>
									<div id="infoImgBox">
										<img
											src="${pageContext.request.contextPath}/resources/img/com01.png"
											alt="com01" class="infoImg">
									</div>

							</a></li>


						</ul>
					</div>


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