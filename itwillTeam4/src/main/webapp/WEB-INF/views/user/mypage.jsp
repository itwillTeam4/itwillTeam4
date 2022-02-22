<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.css" integrity="sha256-jLWPhwkAHq1rpueZOKALBno3eKP3m4IMB131kGhAlRQ=" crossorigin="anonymous">

<link href="${pageContext.request.contextPath}/resources/css/user.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" type="text/css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link href='fullcalendar/main.css' rel='stylesheet' />
<script src='fullcalendar/main.js'></script>

</head>
<body>
	<%@include file="../header.jsp"%>

	<div class="mypageWrap">


		<div class="mypageWrapTop">
			<p class="mypageHello">안녕하세요.</p>
			<p class="mypageName">
				${signInUserId}<span>멤버</span>
			</p>
			<form class="topForm" action="./userupdate" method="get">
				<input type="submit" class="mypageOption" value="설정">
		</div>


		<div class="mypageTap">

			<ul id="tapui">
				<li id="tapli1" class=" myon">캘린더</li>
				<li id="tapli2">내 커뮤니티</li>
				<li id="tapli3">내 최근 작성글</li>

			</ul>
		</div>
		<div class="mypageConWrap">

			<div id="mypageCon1">
				<div id='calendar'></div>
			</div>
			<div id="mypageCon2">


				<div>
					<ul>
						<li><a href="http://localhost:8181/team4/meet/insert" type="button">메인</a></li>

					</ul>
				</div>

			</div>
			<div id="mypageCon3">


				<c:forEach begin="0" end="5" step="1" var="board" items="${boardList }">
					<div class="box Mybox">
						<a href="http://localhost:8181/team4/board/detail?bno=${board.bno }">
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
		</div>

		<div>
			<p>${userNn }</p>
		</div>
	</div>



	<%@include file="../footer.jsp"%>

	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/core@5.10.1/main.global.min.js" integrity="sha256-3dt17Yg5LzGdmVjcMO6UCmb3tHzrzkSs840gbjult00=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@5.10.1/main.global.min.js" integrity="sha256-B23++lLMKxsNUvndnA+0UyTXS6SQ5NKHAv32rxO3AqI=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@5.10.1/main.global.min.js" integrity="sha256-WbQSQ0zYo3bZNQiA5R5YdIL/CGRzzM3wQVcyVtdZtFQ=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/timegrid@5.10.1/main.global.min.js" integrity="sha256-UdGTVTqBgOVOXO5g3t3+djyiGANWOGPfWny+aWTJRrI=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/list@5.10.1/main.global.min.js" integrity="sha256-hv4JZxfujHAembALj9LHpTqw+bX2MDxtqksAOvRy9/c=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/scrollgrid@5.10.1/main.global.min.js" integrity="sha256-k2+wyIVMIVd1Gy1ZRvDiI7+ZVBjNKB91z1tHSPw0x/E=" crossorigin="anonymous"></script>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		$(document).ready(function() {
			$("#mypageCon1").hide();
		});

		$("#tapli1").click(function() {

			$(this).addClass("myon")
			$("#tapli2").removeClass("myon");
			$("#tapli3").removeClass("myon");
			$("#mypageCon1").show();
			$("#mypageCon2").hide();
			$("#mypageCon3").hide();

		});

		$("#tapli2").click(function() {

			$(this).addClass("myon")
			$("#tapli1").removeClass("myon");
			$("#tapli3").removeClass("myon");
			$("#mypageCon1").hide();
			$("#mypageCon2").show();
			$("#mypageCon3").hide();

		});
		$("#tapli3").click(function() {

			$(this).addClass("myon")
			$("#tapli1").removeClass("myon");
			$("#tapli2").removeClass("myon");
			$("#mypageCon1").hide();
			$("#mypageCon2").hide();
			$("#mypageCon3").show();

		});
	</script>

	<script>
		document.addEventListener('DOMContentLoaded', function() {

			var calendarEl = document.getElementById('calendar');

			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : 'dayGridMonth',
				initialDate : '2022-02-07',
				selectable : true,
				editable : true,
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay'
				},
				events : [ {
					title : 'All Day Event',
					start : '2022-02-01'
				}, {
					title : 'Long Event',
					start : '2022-02-07',
					end : '2022-02-10'
				}, {
					groupId : '999',
					title : 'Repeating Event',
					start : '2022-02-09T16:00:00'
				}, {
					groupId : '999',
					title : 'Repeating Event',
					start : '2022-02-16T16:00:00'
				}, {
					title : 'Conference',
					start : '2022-02-11',
					end : '2022-02-13'
				}, {
					title : 'Meeting',
					start : '2022-02-12T10:30:00',
					end : '2022-02-12T12:30:00'
				}, {
					title : 'Lunch',
					start : '2022-02-12T12:00:00'
				}, {
					title : 'Meeting',
					start : '2022-02-12T14:30:00'
				}, {
					title : 'Birthday Party',
					start : '2022-02-13T07:00:00'
				}, {
					title : 'Click for Google',
					url : 'http://google.com/',
					start : '2022-02-28'
				} ]
			});

			calendar.render();
		});
	</script>
</body>
</html>