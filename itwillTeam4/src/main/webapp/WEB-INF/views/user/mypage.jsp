<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    						
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>책오</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
	</head>
	<body>
		<%@include file="../header.jsp"%>
				<p>안녕하세요</p>
				<p><span><Strong>${signInUserId}</Strong></span> 멤버</p>
				<form action="./user/userupdate" method="get">
					<input type="submit" value="설정">
				</form>
			
			
			
			
		<%@include file="../footer.jsp"%>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
      	
      	
		<div>
			<ul>
				<li><a href="http://localhost:8181/team4/meet/insert" type="button">메인</a></li>
				
			</ul>
		</div>
	</body>
</html>