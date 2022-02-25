<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="${pageContext.request.contextPath}/resources/css/home.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/meet.css"
	type="text/css">



</head>
<body>
	<%@include file="../header.jsp"%>







	<div class="contentWrapMeet">
		<div class="innerWrapMeetFlex">
			<div class="search">
				<h2>내게 맞는 독서 모임을 선택해 보세요!</h2>
				<div class="searchbox">
					<form id="searchform" action="./?act=search" method="post">
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
								
									<input type="checkbox" name="search2[]" id="S-14" value="독서토론형">
									<div class="radio-box">
										<label for="S-14" sytle="padding:0 0.9rem;">독서토론형</label>
									</div>
									
									<input type="checkbox" name="search2[]" id="S-15" value="책수다형">
									<div class="radio-box">
										<label for="S-15" sytle="padding:0 0.9rem;">책수다형</label>
									</div>
									
									<input type="checkbox" name="search2[]" id="S-16" value="덕후형">
									<div class="radio-box">
										<label for="S-16" sytle="padding:0 0.9rem;">덕후형</label>
									</div>
									
									<input type="checkbox" name="search2[]" id="S-17" value="스터디형">
									<div class="radio-box">
										<label for="S-17" sytle="padding:0 0.9rem;">스터디형</label>
									</div>
									
									<input type="checkbox" name="search2[]" id="S-18" value="생활습관 개선형">
									<div class="radio-box">
										<label for="S-18" sytle="padding:0 0.9rem;">생활습관 개선형</label>
									</div>
									
									<input type="checkbox" name="search2[]" id="S-19" value="낭독형">
									<div class="radio-box">
										<label for="S-19" sytle="padding:0 0.9rem;">낭독형</label>
									</div>
									
									<input type="checkbox" name="search2[]" id="S-20" value="챌린지형">
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
								
									<input type="radio" name="search3" id="S-21" value="1">
									<div class="radio-box">
										<label for="S-21" sytle="padding:0 0.9rem;">한 번만 만나요</label>
									</div>
									
									<input type="radio" name="search3" id="S-22" value="2">
									<div class="radio-box">
										<label for="S-22" sytle="padding:0 0.9rem;">여러 번 만나요</label>
									</div>
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


	</div>

	<%@include file="../footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	<script>
	 setInterval(function(){
	        
	        $(".wpqkf").delay(1500)
	        $(".wpqkf").animate({"margin-left":"-623px"},1000)
	        $(".wpqkf").delay(1500)
	        $(".wpqkf").animate({"margin-left":"-1246px"},1000)
	        $(".wpqkf").delay(1500)
	        $(".wpqkf").animate({"margin-left":"0px"},1000)
	        
	        
	    },2500)
	    
	</script>
</body>
</html>