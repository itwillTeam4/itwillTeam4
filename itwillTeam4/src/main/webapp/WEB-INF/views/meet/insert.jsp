<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책오</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
	<%@include file="../header.jsp"%>
	
		<div>
			<form method="post">
				<div>
					<input type="text" name="meet_name" placeholder="모임 이름" required autofocus />
				</div>
				<div>
					<textarea rows="10" name="meet_intro" placeholder="모임 인트로" required></textarea>
				</div>
				<div class="form-eles">
					<dl>
						<dt>"독서 모임 테마"</dt>
						<dd>
							<select name="meet_theme" valch="yes" msg="독서 모임 테마를 선택하세요">
								<option value>선택하세요</option>
								<option value="책수다형">책수다형</option>
								<option value="독서토론형">독서토론형</option>
								<option value="덕후형">덕후형</option>
								<option value="생활습관 개선형">생활습관 개선형</option>
								<option value="낭독형">낭독형</option>
								<option value="챌린지형">챌린지형</option>
								<option value="스터디형">스터디형</option>
							</select>
						</dd>
					</dl>
				</div>

				<div class="form-eles">
					<dl>
						<dt>"독서 모임 인원수"</dt>
						<dd>
							<select name="meet_member_num" valch="yes" msg="모임 인원수를 설정하세요">
								<option value>선택하세요</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
							</select>
						</dd>
					</dl>
				</div>

				<div class="form-eles">
					<dl>
						<dt>"온/오프라인"</dt>
						<dd>
							<div class="selradio">
								<label style="margin-right: 84px;"> <input type="radio" name="meet_on_or_off" value="1"> "온라인"
								</label> <label> <input type="radio" name="meet_on_or_off" value="2"> "오프라인"
								</label>
							</div>
						</dd>
					</dl>
				</div>

				<div>
					<input type="text" name="meet_host_name" value="${signInUserId}" required/>
				</div>
				<div>
					<input type="text" name="meet_host" value="${signInUserCode}" required readonly/>
				</div>
				<div>
					<input type="text" name="meet_member_code" value="${signInUserCode}" required readonly/>
				</div>
				<div>
					<input type="text" name="meet_join_num" value="1" required readonly/>
				</div>

				<div>
					<input type="text" id="meet_book_title" name="meet_book_title" value="책 제목" required />
					<input type="button" id="btn_book_search" name="btn_book_search" value="검색하기" />
				</div>
				<div id="book_info"></div>
				<div id="book_info2">
					<div>
						<input type="text" id="meet_book_authors" name="meet_book_authors" value="" required />
					</div>
					<div>
						<input type="text" id="meet_book_pub" name="meet_book_pub" value="" required />
					</div>
					<div>
						<input type="text" id="meet_book_img" name="meet_book_img" value="" required />
					</div>
				</div>
				<div id="btns">
					<input type="button" id="btn_prev" value="이전검색">
					<input type="button" id="btn_next" value="다음검색">
				</div>

				<div>
					<input type="submit" value="게시" />
				</div>
			</form>
		</div>

	</div>
	<%@include file="../footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		var n = 0;
		var msg;
		$(document).ready(function() {
			$('#btns').hide();
			$('#book_info2').hide();
			$('#meet_host')
			$('#btn_book_search').click(function(event){
				var title = $('#meet_book_title').val();
				$.ajax({
					method : "GET",
					url : "https://dapi.kakao.com/v3/search/book?target=title",
					data : {
						query : title,
						size:50
					},
					headers : {
						Authorization : "KakaoAK 3f1fb761122afdd0796567178c84f3dc"
					},
				success: function(info){
					msg=info;
					console.log(msg);
					if(msg.documents.lenght!=0){
					getBookInfo(n);
					}
					else {
						alert("도서 검색 실패!")
					}
				}
				})
			});
		});
		$('#btn_prev').click(function(){
			if(n>0){
				n--;
				getBookInfo(n);
			}
		});
		$('#btn_next').click(function(){
			if(n<msg.documents.length-1){
				n++;
				getBookInfo(n);
			}
		});
		
		
		
		function getBookInfo(n){
			var list_info='';
			$('#book_info').empty();	
			list_info +='<div>'
			+'<img src='+msg.documents[n].thumbnail+'/>'
			+'</div>'
			+'</div>';
			$('#book_info').html(list_info);
			$('#meet_book_title').val(msg.documents[n].title);
			$('#meet_book_authors').val(msg.documents[n].authors);
			$('#meet_book_pub').val(msg.documents[n].publisher);
			$('#meet_book_img').val(msg.documents[n].thumbnail);
			$('#book_info2').show();
			$('#btns').show();
			};
		
		
		
		
	</script>

</body>
</html>