<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>team4</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="${pageContext.request.contextPath}/resources/css/home.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">

<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

</head>
<body>


	<%@include file="header.jsp"%>
	<div class="container-fluid" id="wrap1">

		<div id="carouselWrap">
			<div id="carouselExampleInterval" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" data-interval="3000">
						<img
							src="${pageContext.request.contextPath}/resources/img/slide1.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item" data-interval="3000">
						<img
							src="${pageContext.request.contextPath}/resources/img/slide2.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item" data-interval="3000">
						<img
							src="${pageContext.request.contextPath}/resources/img/slide3.png"
							class="d-block w-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-target="#carouselExampleInterval" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-target="#carouselExampleInterval" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</button>
			</div>
		</div>

	</div>


	<div id="wrap2">
		<div id="wrap2_1">
			<h2>
				Weekly <span>책오 픽!</span>
			</h2>
			<img src="${pageContext.request.contextPath}/resources/img/pick.png"
				alt="pick">
		</div>
		<h3>베스트 독서 모임 후기</h3>




		<div class="swiper mySwiper">

			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#">
						<div class="a">
							<div class="a_a">
								<!--  ${board.board_title}-->

							</div>
							<div class="a_b">
								<h5>
									<!-- ${board.board_userid} -->
								</h5>
								<p>
									<!-- ${board.board_meet_idx} = 모임이름으로? -->
							</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#">
						<div class="a">
							<div class="a_a">
								<!--  ${board.board_title}-->

							</div>
							<div class="a_b">
								<h5>
									<!-- ${board.board_userid} -->
								</h5>
								<p>
									<!-- ${board.board_meet_idx} = 모임이름으로? -->
							</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#">
						<div class="a">
							<div class="a_a">
								<!--  ${board.board_title}-->

							</div>
							<div class="a_b">
								<h5>
									<!-- ${board.board_userid} -->
								</h5>
								<p>
									<!-- ${board.board_meet_idx} = 모임이름으로? -->
							</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide silde-left">
					<a href="#">
						<div class="a">
							<div class="a_a">
								<!--  ${board.board_title}-->

							</div>
							<div class="a_b">
								<h5>
									<!-- ${board.board_userid} -->
								</h5>
								<p>
									<!-- ${board.board_meet_idx} = 모임이름으로? -->
							</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide silde-left">
					<a href="#">
						<div class="a">
							<div class="a_a">
								<!--  ${board.board_title}-->

							</div>
							<div class="a_b">
								<h5>
									<!-- ${board.board_userid} -->
								</h5>
								<p>
									<!-- ${board.board_meet_idx} = 모임이름으로? -->
							</div>
						</div>
					</a>
				</div>
				<div class="swiper-slide silde-left">
					<a href="#">
						<div class="a">
							<div class="a_a">
								<!--  ${board.board_title}-->

							</div>
							<div class="a_b">
								<h5>
									<!-- ${board.board_userid} -->
								</h5>
								<p>
									<!-- ${board.board_meet_idx} = 모임이름으로? -->
							</div>
						</div>
					</a>
				</div>
			</div>

			<div class="swiper-pagination"></div>
		</div>

	</div>
	<div id="wrap3" class="content">
		<div class="wrap3List" id="wrap3_1">
			
		
		</div>
	
		<div class="wrap3List" id="wrap3_2">
		
		</div>
	
	</div>
	
	<div id="wrap4" class="content">
	
	
	</div>


	<%@include file="footer.jsp"%>
	

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		var swiper = new Swiper(".mySwiper", {
			slidesPerView : 3,
			spaceBetween : 3,
			slidesPerGroup : 3,
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev",
			},
		});
		
		window.addEventListener(
			    "wheel",
			    function (e) {
			      e.preventDefault();
			    },
			    { passive: false }
			  );

			  var $html = $("html");

			  var page = 1;

			  var lastPage = $(".content").length;

			  $html.animate({ scrolltop: 0 }, 10);

			  $(window).on("wheel", function (e) {
			    if ($html.is(":animated")) return;

			    if (e.originalEvent.deltaY > 0) {
			      if (page == lastPage) return;

			      page++;
			    } else if (e.originalEvent.deltaY < 0) {
			      if (page == 1) return;

			      page--;
			    }

			    var posTop = (page - 1) * $(window).height();

			    $html.animate({ scrollTop: posTop });
			  });
			  
			  
			  window.onload = function() {
				  setTimeout (function(){
					  scrollTo(0,0);
				  },100);
			  }
	</script>
</body>
</html>