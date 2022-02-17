<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
	<style>
        .valid_id {
            color: green;
            display: none;
        }
        .invalid_id {
            color: red;
            display: none;
        }
        .valid_nn {
            color: green;
            display: none;
        }
        .invalid_nn {
            color: red;
            display: none;
        }
        .invalid_pwd {
            color: red;
            display: none; 
        }
        .invalid_pwd_pre {
            color: red;
            display: none;   
        }    
        </style>
</head>
<body>
	<div class="container-fluid">
		<header class="jumbotron text-center">
			<h1>프로필 수정</h1>
		</header>

		<div>
			<form action="./userupdate" method="post">
				<div>
					<input type="hidden" value="${userUpdate.user_nn}" id="user_nn_hid" name="user_nn_hid"/>
				</div>
				<div>
					<input type="text" value="${userUpdate.user_nn}" id="user_nn" name="user_nn" placeholder="닉네임 입력" required autofocus/>
					<div class="valid_nn">사용 가능한 닉네임입니다.</div>
					<div class="invalid_nn">닉네임이 중복됐습니다.</div>
				</div>
				
				<div>
					<input type="hidden" value="${userUpdate.user_pwd}" id="user_pwd_hid" name="user_pwd_hid"/>
				</div>
				
				<div>
					<input type="password" id="user_pwd_pre" name="user_pwd_pre"
						placeholder="현재 비밀번호" required />
					<div class="invalid_pwd_pre">비밀번호가 틀렸습니다.</div>
				</div>
				
				<div>
					<input type="password" id="user_pwd_ck" name="user_pwd_ck"
						placeholder="변경할 비밀번호" required />
				</div>
				<div>
					<input type="password" id="user_pwd" name="user_pwd"
						placeholder="변경할 비밀번호 확인" required />
					<div class="invalid_pwd">비밀번호가 틀렸습니다.</div>
				</div>

				<div>
					<input type="text" value="${userUpdate.user_phone}" name="user_phone" placeholder="전화번호 입력" required />
				</div>

				<div>
					<input type="text" value="${userUpdate.user_tag}" name="user_tag" placeholder="유저 태그 입력" required />
				</div>

				<div>
					<input type="submit" id="btn-complete" value="프로필 수정 완료" />
				</div>
			</form>
			
			<form action="./userdelete" method="get">
				<div>
					<input type="submit" id="btn-complete" value="회원탈퇴" />
				</div>
			</form>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	 <script>
        $(document).ready(function () {
        	
        	
        	$('#user_nn').change(function (event) {
        		var params_nn = { user_nn: $(this).val() };
        		if ( $('#user_nn_hid').val() == $('#user_nn').val() ){
        			$('.valid_nn').show();  // valid div 보여줌.
        			$('.invalid_nn').hide(); // valid div 없앰(display=none).
        			$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
        		} else {
        			$.post('./checknn', params_nn, function (response) {
           				if (response == 'valid_nn') {  // 사용 가능한 아이디(DB에 없는 아이디)인 경우
               				$('.valid_nn').show();  // valid div 보여줌.
               				$('.invalid_nn').hide(); // valid div 없앰(display=none).
               				$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
               			} else {
               				$('.valid_nn').hide(); // valid div 없앰(display=none).
               				$('.invalid_nn').show(); // invalid div 보여줌.
               				$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
               			}
            		});
        		}
        	});
        	
        	$('#user_pwd_pre').change(function(event){
        		if ($('#user_pwd_hid').val() == $('#user_pwd_pre').val()){
        			$('.invalid_pwd_pre').hide(); // valid div 없앰(display=none).
    				$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
        		} else {
        			$('.invalid_pwd_pre').show(); // invalid div 보여줌.
    				$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
        		}
        	});
        	
        	$('#user_pwd').change(function(event){
        		if ($('#user_pwd_ck').val() == $('#user_pwd').val()){
        			$('.invalid_pwd').hide(); // valid div 없앰(display=none).
    				$('#btn-complete').removeAttr('disabled'); // 버튼 활성화
        		} else {
        			$('.invalid_pwd').show(); // invalid div 보여줌.
    				$('#btn-complete').attr('disabled', 'true'); // 버튼 비활성화
        		}
        	});
        	
        });
        </script>

</body>
</html>