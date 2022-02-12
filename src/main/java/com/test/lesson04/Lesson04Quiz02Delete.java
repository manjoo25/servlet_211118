package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/url_delete")
public class Lesson04Quiz02Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	// doGet으로 하는 이유는 id가 나와야돼서 일까
		response.setContentType("text/plain");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		// DB 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// delete
		String deleteQuery = "delete from `favorites` where `id` = " + id;
		try {
			mysql.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// select (는 delete할 때 필요xxxxxx)
		
		// DB 연결 해제
		mysql.disconnection();
		
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz02_1.jsp");
	}
}
