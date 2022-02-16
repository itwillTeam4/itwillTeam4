<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    						
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
	</head>
	<body>
		<div class="container-fluid">
		<header class="jumbotron text-center">
			<h1>프로필 수정</h1>
		</header>
		<div class="contents">
	<div class="img">
		
			<c:choose>
				<c:when test="${user.profile_photo == null}">
					
				</c:when>
				<c:otherwise>
					
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div>
	<form action="./register" method="post">
	<div class="filebox">
		<form action="/main/user/image_insert" id="form" name="form"
			method="post" enctype="multipart/form-data" autocomplete="off">
			<label for="ex_file">프로필 사진 바꾸기</label> 
			<input type="file" id="ex_file" name="filename" required />
			<button type="submit" class="btn btn-default">업로드</button>
		</form>
		
		  <form action="./register" method="post">
                    <div>
                        <input type="text" id="user_nn" name="user_nn" placeholder="닉네임 입력" required autofocus/>
                        
                         <div class="valid_nn">사용 가능한 닉네임입니다.</div>
                        <div class="invalid_nn">닉네임이 중복됐습니다.</div>
                    </div>
                    <div>
                    	<input type="password" id="user_pwd_ck" name="user_pwd_ck" placeholder="비밀번호 입력" required />
                    </div>
                    
                   
                        <input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호 확인" required />
                        <div class="invalid_pwd">비밀번호가 틀렸습니다.</div>
                    </div>
                    
                     <div>
                        <input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호 입력" required autofocus/>
                        <div class="valid_pwd">사용 가능한 비밀번호 입니다.</div>
                        
                    </div>
                    
                    <div>
                        <input type="text" id="user_tag" name="usertag" placeholder="키워드 프로필??" required autofocus/>
                       
                        
                    </div>
                    <div>
                        <input type="submit" id="btn-complete" value="수정 완료" />
                    </div>
                    </form>
	</div>
</div>
<div id="footer">
	
</div>
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
      	
        </div>
	</body>
	
	
</html>