package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/user_delete")
public class Lesson04Ex02Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request params => id
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// delete query 수행
		String deleteQuery = "delete from `new_user` where `id` = " + id;
		try {
			mysql.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysql.disconnection();
		
		// 목록 화면 이동 -> 리다이렉트
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
