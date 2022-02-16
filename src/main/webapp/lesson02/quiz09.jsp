<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-day 계산</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>오늘부터 1일</h1>
		<%
			Calendar day = Calendar.getInstance();
			day.add(Calendar.DATE, -1); // 오늘부터로 하면 0일이기 때문에 하루를 빼준다. -> 1일이 됨
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일"); // 01월 01일이 아닌 1월 1일로 출력되기 때문에 하나씩만
			for (int i = 1; i <= 10; i++) {
				day.add(Calendar.DATE, 100);
				// out.print((i * 100) + "일 : " + sdf.format(day.getTime()) + "<br>");
		%>
		<div class="display-4"><%= (i * 100) + "일 : "%><span class="text-danger"><%= sdf.format(day.getTime()) + "<br>" %></span></div>
		<%
			}
		%>
		<%
			Calendar today = Calendar.getInstance();
			today.add(Calendar.DATE, -1);
			for (int j = 100; j <= 1000; j += 100) {
				// 만약 amount에 j를 넣는다면 100씩 늘어나는 것이(100, 200, ... , 1000) 아닌
				// 누적된 값이(100, (100+200), (100+200+300)) 더해진다.
				today.add(Calendar.DATE, 100);
		%>
		<div class="display-4">
			<span><%= j %>일:</span>
			<span class="text-danger"><%= sdf.format(today.getTime())%></span><br>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>