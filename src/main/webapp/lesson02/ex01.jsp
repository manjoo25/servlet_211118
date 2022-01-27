<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- html의 주석: 소스보기에서 보인다. -->
	<%-- jsp의 주석: 소스보기에서 보이지 않는다 --%>
	<%-- 주로 개발자들만 봐야되는 내용은 이 주석에 쓴다 쉿 비밀! --%>
	
<%
	// scriptlet
	// 자바 문법 시작 --> 자바 주석
	//  메인 메소드같은 느낌
	
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
%>

	<strong>합계:</strong>
	<input type="text" value="<%= sum %>">
	<br>
	
<%!
	// 선언문 - 클래스같은 느낌
	
	// 필드
	private int num = 100;
	
	// 메소드
	public String getHelloWorld() {
		return "Hello world!!";
	}
%>

<!-- 리턴되는 메소드 값을 넣을 수 있다 -->
<%= getHelloWorld() %>
<br>

<!-- 간단한 산술 연산 가능! -->
<%= num + 200 %>
</body>
</html>