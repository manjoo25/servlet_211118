<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%
List<Map<String, String>> list = new ArrayList<>();
Map<String, String> map = new HashMap<String, String>() {
	{
		put("ch", "5");
		put("name", "SBS");
		put("category", "지상파");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "7");
		put("name", "KBS2");
		put("category", "지상파");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "9");
		put("name", "KBS1");
		put("category", "지상파");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "11");
		put("name", "MBC");
		put("category", "지상파");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "54");
		put("name", "OCN");
		put("category", "영화");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "56");
		put("name", "Screen");
		put("category", "영화");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "57");
		put("name", "Mplex");
		put("category", "영화");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "30");
		put("name", "KBS 드라마");
		put("category", "드라마");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "32");
		put("name", "MBC 드라마");
		put("category", "드라마");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "34");
		put("name", "Olive");
		put("category", "드라마");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "3");
		put("name", "tvN");
		put("category", "예능");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "28");
		put("name", "MBC Every1");
		put("category", "예능");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "48");
		put("name", "JTBC2");
		put("category", "예능");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "49");
		put("name", "E채널");
		put("category", "예능");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "120");
		put("name", "SPOTV");
		put("category", "스포츠");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "121");
		put("name", "KBSN 스포츠");
		put("category", "스포츠");
	}
};
list.add(map);
%>

<%
	String category = request.getParameter("category");
%>


<div class="menu bg-danger">
	<ul class="nav nav-fill">
		<li class="nav-item"><a href="template.jsp" class="nav-link">전체</a></li>
		<li class="nav-item"><a href="template.jsp?category=지상파"
			class="nav-link">지상파</a></li>
		<li class="nav-item"><a href="template.jsp?category=드라마"
			class="nav-link">드라마</a></li>
		<li class="nav-item"><a href="template.jsp?category=예능"
			class="nav-link">예능</a></li>
		<li class="nav-item"><a href="template.jsp?category=영화"
			class="nav-link">영화</a></li>
		<li class="nav-item"><a href="template.jsp?category=스포츠"
			class="nav-link">스포츠</a></li>
	</ul>
</div>

<table class="table text-center">
	<tr>
		<th>채널</th>
		<th>채널명</th>
		<th>카테고리</th>
	</tr>
	<%
	for (Map<String, String> chanel : list) {
		if (chanel.get("category").equals(category)) {
	%>
	<tr>
		<td><%=chanel.get("ch")%></td>
		<td><%=chanel.get("name")%></td>
		<td><%=chanel.get("category")%></td>
	</tr>
	<%
		}
	}
	%>
</table>