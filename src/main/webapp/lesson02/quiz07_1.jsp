<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);
%>
	<div class="container">
		<h1>검색 결과</h1>
		<table class="table">
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
			<%
				String search = request.getParameter("search");
				String filtering = request.getParameter("filtering");
				
				// 검색 -> search = menu일 경우 출력 (-> 단, filtering을 했다면 4점 이상만 출력)
				
				/* Iterator<String> iter = map.keySet().iterator();
				
				while (iter.hasNext()) {
					String searchList = iter.next(); */
					
				for (int i = 0; i < list.size(); i++) {
						
					if (search.equals(list.get(i).get("menu")) | search.equals(list.get(i).get("name"))) {
						
						if (filtering == null) {
							// filtering이 null이 아니라면 check -> 4점 이하 제외
							
			%>
			<tr>
				<td><%= list.get(i).get("menu") %></td>
				<td><%= list.get(i).get("name") %></td>
				<td><%= list.get(i).get("point") %></td>
			</tr>
			<%
						} else {
							double point = (double)list.get(i).get("point");
							if (point >= 4.0) {
								out.print("<tr><td>" + list.get(i).get("menu") + "</td><td>" + list.get(i).get("name") + "</td><td>" + list.get(i).get("point") + "</td></tr>");
							}
						}
					}				
				}
			%>
		</table>
	</div>
</body>
</html>