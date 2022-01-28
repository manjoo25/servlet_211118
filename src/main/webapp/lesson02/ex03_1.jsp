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
	// food -> checkbox => 다중 선택 가능 // radio => 단일 선택
	String[] foodArr = request.getParameterValues("food");
	String fruit = request.getParameter("furit");
%>
<table border="1">
	<tr>
		<th>별명</th>
		<td><%= nickname %></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><%= hobby %></td>
	</tr>
	<tr>
		<th>선호하는 동물</th>
		<td><%= animal %></td>
	</tr>
	<tr>
		<th>선호하는 음식</th>
		<%-- 배열이 나와서 이상한 값으로 출력됨 --%>
		<%-- <td><%= foodArr %></td> --%><!-- 만약 선택된게 없으면 -> null -->
		<td>
			<%
				if (foodArr != null) {
					String result = "";
					/* foodArr에서 꺼내온 것을 food String에 값을 넣는다 */
					for (String food : foodArr) {
						result += food + ","; // 기존에 있는 문자열에 뒤이어 붙인다(합계 구하는 방식과 비슷)
					}
					
					// 맨 뒤에 붙은 , 제거
					// ex) ab, ab만 가져오려면 substring(0, 2(첫번째 인덱스 + 1)) <- 길이에서 1 빼준 값
					result = result.substring(0, result.length() - 1);
					out.print(result);
				}
			%>
		</td>
	</tr>
	<tr>
		<th>좋아하는 과일</th>
		<td><%= fruit %></td>
	</tr>
</table>

</body>
</html>