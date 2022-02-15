<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>itwillTeam4</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" 
        	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container-fluid">
            <header class="text-center">
                <h1>로그인 페이지</h1>
            </header>
            
            <nav> <!-- TODO: 페이지 이동 메뉴 -->
            </nav>
            
            <div>
                <form action="./signin" method="post">
                    <div>
                        <input type="text" name="userid" placeholder="아이디 입력" autofocus required />
                    </div>
                    <div>
                        <input type="password" name="pwd" placeholder="비밀번호 입력" required />
                    </div>
                    <div>
                        <input type="submit" value="로그인" />
                    </div>
                    
                    <!--  한번 더 입력받는 패스워드 -->
                     <div>
                        <input type="password" name="pwd" placeholder="비밀번호 입력" autofocus required />
                    </div>
                    
                     <div>
                        <input type="text" name="user_nn" placeholder="닉네임 입력" autofocus required />
                    </div>
                    
                     <div>
                        <input type="text" name="user_name" placeholder="이름 입력" autofocus required />
                    </div>
                    
                      <div>
                        <input type="text" name="user_phone" placeholder="전화번호 입력" autofocus required />
                    </div>
                    
                      <div>
                        <input type="text" name="user_tag" placeholder="유저 태그 입력" autofocus required />
                    </div>
                    
                    <div>
                        <input type="hidden" name="url" value="${url}" />
                    </div>
                </form>
            </div>
        
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>