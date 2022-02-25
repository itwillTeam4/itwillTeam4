<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/meet.css" type="text/css">



</head>
<body>
	<%@include file="../header.jsp"%>







	<div class="contentWrapMeet">
		<div class="innerWrapMeetFlex">
			<div class="search">
				<h2>내게 맞는 독서 모임을 선택해 보세요!</h2>
				<div class="searchbox">
					<form id="searchform" action="./find" method="post">
						<input type="hidden" name="searchmode" value="Y">
						<ul>
							<li>온&오프라인</li>
							<li>
								<div class="order-list-wrap">

									<input type="radio" name="search1" id="S-12" value="1">
									<div class="radio-box">
										<label for="S-12">온라인</label>
									</div>

									<input type="radio" name="search1" id="S-13" value="2">
									<div class="radio-box">
										<label for="S-13">오프라인</label>
									</div>

								</div>
							</li>
						</ul>

						<ul>
							<li>독서 모임 테마</li>
							<li>
								<div class="order-list-wrap">

									<input type="radio" name="search2[]" id="S-14" value="독서토론형">
									<div class="radio-box">
										<label for="S-14" sytle="padding:0 0.9rem;">독서토론형</label>
									</div>

									<input type="radio" name="search2[]" id="S-15" value="책수다형">
									<div class="radio-box">
										<label for="S-15" sytle="padding:0 0.9rem;">책수다형</label>
									</div>

									<input type="radio" name="search2[]" id="S-16" value="덕후형">
									<div class="radio-box">
										<label for="S-16" sytle="padding:0 0.9rem;">덕후형</label>
									</div>

									<input type="radio" name="search2[]" id="S-17" value="스터디형">
									<div class="radio-box">
										<label for="S-17" sytle="padding:0 0.9rem;">스터디형</label>
									</div>

									<input type="radio" name="search2[]" id="S-18" value="생활습관 개선형">
									<div class="radio-box">
										<label for="S-18" sytle="padding:0 0.9rem;">생활습관 개선형</label>
									</div>

									<input type="radio" name="search2[]" id="S-19" value="낭독형">
									<div class="radio-box">
										<label for="S-19" sytle="padding:0 0.9rem;">낭독형</label>
									</div>

									<input type="radio" name="search2[]" id="S-20" value="챌린지형">
									<div class="radio-box">
										<label for="S-20" sytle="padding:0 0.9rem;">챌린지형</label>
									</div>
								</div>
							</li>
						</ul>

						<ul>
							<li>지역</li>
							<li>
								<div class="order-list-wrap">

									<input type="text" name="search3" id="S-21" placeholder="책 제목" />

								</div>
							</li>
						</ul>
						<div class="btn">
							<button type="submit">맞춤 독서 모임 찾기</button>
						</div>
						<div>
							<button type="button" onclick="location.href='/search/?act=all';">전체 독서모임 스케쥴 보기(캘린더인듯?)</button>
						</div>
					</form>
				</div>
				<div class="lists">
					<div class="item-box">
						<ul>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="meetWrap">
			<ul class="meetUl">

				<c:forEach var="meet" items="${meetList}">
					<li><a href="http://localhost:8181/team4/meet/detail?meet_idx=${meet.meet_idx }">
							<div class="infoReal">
								<div class="infoReal1">
									<span class="meetTitle text-overflow note-title">${meet.meet_name }</span> <span class="meetThemeReal">${meet.meet_theme }</span>
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
									<span class="name">${meet.meet_host_name }</span> <span class="meetMember"> ${meet.meet_join_num } 명 참여중</span>
								</div>
								<span class="meetIntro text-overflow-line2">${meet.meet_intro }</span>


							</div>
							<div class="infoImgBoxReal">
								<img src="${meet.meet_book_img }" alt="bookimg" class="infoImg">
							</div>

						</a></li>
				</c:forEach>








			</ul>
		</div>

	</div>

	<%@include file="../footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		setInterval(function() {

			$(".wpqkf").delay(1500)
			$(".wpqkf").animate({
				"margin-left" : "-623px"
			}, 1000)
			$(".wpqkf").delay(1500)
			$(".wpqkf").animate({
				"margin-left" : "-1246px"
			}, 1000)
			$(".wpqkf").delay(1500)
			$(".wpqkf").animate({
				"margin-left" : "0px"
			}, 1000)

		}, 2500)
	</script>
</body>
</html>