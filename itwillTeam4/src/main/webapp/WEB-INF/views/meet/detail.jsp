<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
=======
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> branch 'main' of https://github.com/itwillTeam4/itwillTeam4
<!DOCTYPE html>
<html>
<<<<<<< HEAD
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/meet.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css"
	type="text/css">

<script
	src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor.js"></script>

</head>
<body>
=======
	<head>
		<meta charset="UTF-8">
		<title>모임 디테일</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
	</head>
	<body>
>>>>>>> branch 'main' of https://github.com/itwillTeam4/itwillTeam4
	<%@include file="../header.jsp"%>
<<<<<<< HEAD







	<div class="contentWrapMeet">

		<div class="innerWrapMeetFlex">
			<div class="leftDetail">

				<div class="leftDetailTop">

					<div class="leftDetailTop1">
						<h2>${meet.meet_name }</h2>

					</div>
					<div class="meetETCDetail">
						<span class="themeDetail"> ${meet.meet_theme }</span>
						<c:if test="${meet.meet_on_or_off == 1}">
							<span class="meetOnOffDetail"> #온라인모임 </span>
						</c:if>


						<c:if test="${meet.meet_on_or_off == 2}">
							<span class="meetOnOffDetail"> #오프라인모임 </span>
						</c:if>
					</div>
				</div>

				<div class="detailFrame">

					<div class="frameInfo">
						<h2 class="frameTitle text-overflow-line2">${meet.meet_book_title }</h2>
						<h3 class="frameAuthors">${meet.meet_book_authors }</h3>
						<h4 class="framePub">${meet.meet_book_pub }</h4>

					</div>
					<div class="frameImgBox">


						<img src="${meet.meet_book_img }" alt="book">
					</div>
				</div>
				<div class="themeintro">
					<p class="themeintro1">
						해당 모임은 [<span>${meet.meet_theme }</span>] 모임입니다.
					</p>
					<c:choose>

						<c:when test="${meet.meet_theme eq '독서토론형'}">
							<p class="themeintro2">독서토론형 모임은 몇 개의 토론 주제를 뽑아 심도 깊은 토론을 하는
								모임입니다.</p>
						</c:when>
						<c:when test="${meet.meet_theme eq '책수다형'}">
							<p class="themeintro2">책수다형 모임은 호스트와 멤버들이 책을 가지고 형식과 제한 없이
								자유롭게 생각을 나누는 모임입니다.</p>
						</c:when>
						<c:when test="${meet.meet_theme eq '생활습관 개선형'}">
							<p class="themeintro2">생활습관 개선형 모임은 책의 도움을 받아 생활 습관을 바꾸는
								모임입니다.</p>
						</c:when>
						<c:when test="${meet.meet_theme eq '챌린지형'}">
							<p class="themeintro2">챌린지형 모임은 책과 관련된 특별한 미션과 과제가 주어지는
								모임입니다.</p>
						</c:when>
						<c:when test="${meet.meet_theme eq '스터디형'}">
							<p class="themeintro2">스터디형 모임은 책 한권을 선정하여 멤버들과 함께 책의 내용을
								공부하는 모임입니다.</p>
						</c:when>
						<c:when test="${meet.meet_theme eq '낭독형'}">
							<p class="themeintro2">낭독형 모임은 호스트와 멤버들이 책을 같이 소리내어 읽으며 공부하는
								모임입니다.</p>
						</c:when>

					</c:choose>


				</div>
				<div class="detailFormsWrap">
					<div class="detailForms">
						<h3>호스트</h3>
						<p>${meet.meet_host_name }</p>
					</div>

					<div class="detailForms">
						<h3>우리 모임을 소개합니다:)</h3>
						<p>${meet.meet_intro }</p>
					</div>

					<div class="detailForms">
						<h3>모임 장소</h3>
						<c:if test="${meet.meet_on_or_off == 1}">
							<span class="meetOnOffDetail2"> 온라인 </span>
						</c:if>


						<c:if test="${meet.meet_on_or_off == 2}">
							<span class="meetOnOffDetail2"> 오프라인 </span>
						</c:if>
					</div>

					<div class="detailForms">
						<h3>호스트의 다른 모임</h3>
						<input type="hidden" id="host_name_search"
							value="${meet.meet_host_name }" />


					</div>
				</div>
			</div>

			<div class="rightDetail">
			
				<div class="rightInfo">
					<div><p>호스트</p><span>${meet.meet_host_name }</span></div>
					<div><p>함께 읽을 책</p><span class="text-overflow">${meet.meet_book_title }</span></div>
					
					<div><p>현재 모임인원</p><span>${meet.meet_join_num}명</span></div>
					<div><p>모임정원</p><span>${meet.meet_member_num }명</span></div>
					
				
				</div>
				
				<div class="rightApply">
				
				<h2>모임신청하기</h2>
				</div>
			
			</div>
=======
	
		<div class="container-fluid">
			<header class="text-center">
				<h1>모임 상세 페이지</h1>
			</header>
			
			<nav><!-- TODO:페이지 이동 메뉴 -->

			</nav>
		
		
			<div>
			<form method="post">
				<div>
					<div>
						<label for="meet_name">모임 제목</label>
						<input type="text" id="meet_name" name="meet_name" value="${meet.meet_name}" required readonly autofocus/>
					</div>
					<div>
						<label for="meet_host_name">호스트 닉네임</label>
						<input type="text" id="meet_host_name" name="meet_host_name" value="${meet.meet_host_name}" required readonly autofocus/>
					</div>
					<div>
						<label for="meet_intro">모임 인트로</label>
						<textarea rows="5" id="meet_intro" name="meet_intro" required readonly>${meet.meet_intro}</textarea>
					</div>
					<div>
						<label for="meet_theme">모임 테마</label>
						<input type="text" id="meet_theme" name="meet_theme" value="${meet.meet_theme}" required readonly autofocus/>
					</div>				
					<div>
						<label for="meet_member_num">모임 인원 수</label>
						<input type="text" id="meet_member_num" name="meet_member_num" value="${meet.meet_member_num}" required readonly autofocus/>
					</div>
					<div>
						<label for="meet_on_or_off">모임 온&오프라인 여부</label>
						<input type="text" id="meet_on_or_off" name="meet_on_or_off" value="${meet.meet_on_or_off}" required readonly autofocus/>
					</div>
									
				</div>
				
				<div class="boxFooter boxFooter2">
					<a href="./updateLike/${meet.meet_idx}?joiner=${signInUserCode}">
						<div class="boxLike boxLike2">
							<img src="${pageContext.request.contextPath}/resources/img/like.png" alt="like" class="boxLikeImg">
							<p class="mjm">&nbsp;${meet.meet_join_num }</p>
						</div>
					</a>
				</div>

			</form>
>>>>>>> branch 'main' of https://github.com/itwillTeam4/itwillTeam4
		</div>
<<<<<<< HEAD


	</div>






	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		
	</script>
</body>
=======
		</div>
		
		
		<%@include file="../footer.jsp"%>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
>>>>>>> branch 'main' of https://github.com/itwillTeam4/itwillTeam4
</html>