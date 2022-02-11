<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
	<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<%--
	1) url 추가: 인풋 폼 - quiz02.jsp (즐겨찾기 추가) 완성!!!!
			 -> 서블릿(insert 쿼리) - Lesson04Quiz02Insert.java (쿼리가 추가되는 class 만들기) 완성...?!...!
			 insert 가 안되는 이유는,,!?!?!?,,, 뭘까,,,,ㅠㅠ
			 -> url 목록(select 쿼리) - quiz02_1.jsp (즐겨찾기 목록) 위험해따,,
	
	2) 유저 삭제: url 목록 - quiz02_1.jsp => 링크 클릭
			 -> 서블릿(delete 쿼리) - 
			 -> 유저 목록-ex02_1.jsp(새로고침 시 삭제 되어있는 표가 보임)	
 --%>

<body>
	<div class="container">
		<h1>즐겨찾기 추가</h1>
		<form method="post" action="/lesson04/url_insert">
			<div class="my-2">
				사이트명:
				<input type="text" class="form-control col-3" name="name">
			</div>
			<div class="my-2">
				사이트 주소:
				<input type="text" class="form-control col-6" name="url">
			</div>
			<input type="submit" value="추가" class="btn btn-success mt-2">
		</form>
	</div>
</body>
</html>