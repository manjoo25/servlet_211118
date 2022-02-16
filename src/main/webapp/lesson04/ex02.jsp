<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%-- 
		flow
		
		1) 유저 추가: 인풋 폼-ex02.jsp -> 서블릿(insert 쿼리)-class -> 유저 목록(select 쿼리)-ex02_1.jsp
		2) 유저 삭제: 유저 목록-ex02_1.jsp -> 삭제 클릭 -> 서블릿(delete 쿼리) -> 유저 목록-ex02_1.jsp(새로고침 시 삭제 되어있는 표가 보임)
		
	--%>
	
	<form method="post" action="/lesson04/user_insert">
		<p>
			<b>이름:</b>
			<input type="text" name="name">
		</p>
		<p>
			<b>생년월일:</b>
			<input type="text" name="yyyymmdd">
		</p>
		<p>
			<b>이메일</b>
			<input type="text" name="email">
		</p>
		<p>
			<b>자기소개</b><br>
			<textarea rows="5" cols="50" name="introduce"></textarea>
			<%-- 여백을 넣으면 그대로 여백이 생기므로 <></> 붙여줘야 된다 --%>
		</p>
		<p>
			<input type="submit" value="추가">
		</p>
	</form>
</body>
</html>