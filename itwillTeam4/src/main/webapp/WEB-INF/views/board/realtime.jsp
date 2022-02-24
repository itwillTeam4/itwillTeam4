<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>
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
					<li><a href="?act=rlt" class="on">실시간 독서 모임 커뮤니티</a></li>
					<li><a href="?act=my">나의 독서 모임 커뮤니티</a></li>
					<li><a href="?act=free">자유로운 서평</a></li>
					<li><a href="./notice/main">공지사항/이벤트</a></li>

				</ul>
			</div>

			<div class="right-contentsFree">
				<div id="right-top-wrapReal">
					<div style="display: flex; justify-content: space-between;">
						<p id="right-contents-titleMymeet">실시간 독서 모임 커뮤니티</p>
						<div id="meetApplyImg">
							<a href="http://localhost:8181/team4/meet/insert"> <img
								src="${pageContext.request.contextPath}/resources/img/meet.png"
								alt="meet">
							</a>
						</div>
					</div>
					<div class="meetWrap">
						<ul class="meetUl">

							<c:forEach begin="0" end="9" step="1" var="meet"
								items="${meetList}">
								<li><a href="">
										<div class="infoReal">
											<div class="infoReal1">
												<span class="meetTitle text-overflow note-title">${meet.meet_name }</span>
												<span class="meetTheme">${meet.meet_theme }</span>
												<div class="meetETC">

													<c:if test="${meet.meet_on_or_off == 1}">
														<span class="meetOnOff"> #온라인모임 </span>
													</c:if>


													<c:if test="${meet.meet_on_or_off == 2}">
														<span class="meetOnOff"> #오프라인모임 </span>
													</c:if>

												</div>

											</div>
											<div class="infoReal2">
												<span class="name">${meet.meet_host_name }</span> <span
													class="meetMember"> ${meet.meet_join_num } 명 참여중</span>
											</div>
											<span class="meetIntro text-overflow-line2">${meet.meet_intro }</span>


										</div>
										<div class="infoImgBoxReal">
											<img src="${meet.meet_book_img }" alt="bookimg"
												class="infoImg">
										</div>

								</a></li>
							</c:forEach>








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