<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
	<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<%--
	quiz02, quiz02_1 반대로 코드 짬,,,ㅠ
	1) url 추가: 인풋 폼 - quiz02.jsp (즐겨찾기 추가) 완성!!!!
			 -> 서블릿(insert 쿼리) - Lesson04Quiz02Insert.java (쿼리가 추가되는 class 만들기) 완성...?!...!
			 -> url 목록(select 쿼리) - quiz02.jsp (즐겨찾기 목록) 위험해따,,
	
	2) 유저 삭제: url 목록 - quiz02_1.jsp => 링크 클릭
			 -> 서블릿(delete 쿼리) - Lesson04Quiz02Delete.java
			 -> url 목록 - quiz02.jsp(새로고침 시) 링크가 삭제)	
 --%>

<body>
<%
	// DB 연결
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	// DB를 연결해서 table을 갖고 온다!!!! select!!!!
	String selectQuery = "select * from `favorites` order by `id` desc";
	ResultSet result = mysql.select(selectQuery);
%>
	<div class="container">
		<h1 class="my-3">즐겨찾기 목록</h1>
		<table class="table text-center mt-4">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
				while (result.next()) {
			%>
				<tr>
					<td><%= result.getString("name") %></td>
					<td><a href="<%= result.getString("url") %>" target="_blank"><%= result.getString("url") %></a></td>
					<td><a href="/lesson04/url_delete?id=<%= result.getInt("id") %>" class="btn btn-danger">삭제하기</a></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
	</div>
<%
	// DB 연결 해제
	mysql.disconnection();
%>
</body>
</html>