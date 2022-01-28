<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
<%
	// Map을 테이블로 표현하기
	// json은 "korean":85, jsp는 "korean"=85
	Map<String, Integer> map = new HashMap<>();
	map.put("korean", 85);
	map.put("english", 72);
	map.put("math", 90);
	map.put("science", 100);
%>
	<table border="1">
	<%
		// set은 순서가 없다 -> 뒤죽박죽 -> index가 없다
		Iterator<String> iter= map.keySet().iterator();
		while (iter.hasNext()) {
			String key = iter.next(); // 과목명이 순서대로 들어갈 것임
	%>
		<tr>
			<th><%-- <%= key %> --%>
			<%
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
			%>
			</th>
			<!-- 키에 해당하는 value를 얻을 수 있다 -->
			<td><%= map.get(key) %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>