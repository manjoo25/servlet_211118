<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	// food로 가져오면 여러개를 가지고 올 수 있기에 배열로 가져와야 한다
	// 넘어오는 값이 n개이다 -> 배열로 갖고 온다!!!
	// food -> checkbox => 다중 선택 가능
	String[] foodArr = request.getParameterValues("food");
	String furit = request.getParameter("furit");
%>
</body>
</html>