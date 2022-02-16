<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	// DB 연결
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	
	// DB 내용 꺼내오기(select)
	String selectQuery = "select A.*, B.*"
			+ "from `used_goods` as A"
			+ "join `seller` as B"
			+ "ON A.`id` = B.`selleId`";
	ResultSet result = mysqlService.select(selectQuery);
	
	while (result.next()) {
%>

<section>
	<div class="d-flex flex-wrap justify-content-around">
		<div class="content border border-warning p-3">
		<%
			if (result.getString("pictureUrl") == null) {
		%>
		<h3>이미지 없음</h3>
		<%
			}
		%>
			<img src="<%= result.getString("pictureUrl") %>" alt="image" width="250px">
			<h4><%= result.getString("title") %></h4>
			<small><%= result.getInt("price") %></small>
			<div><%= result.getString("nickname") %></div>
		</div>
	</div>
</section>

<%
	}
	// DB 연결 해제
	mysqlService.disconnection();
%>