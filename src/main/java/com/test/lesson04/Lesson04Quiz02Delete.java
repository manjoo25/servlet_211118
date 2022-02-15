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
		// 말구 앵커 태그(a 태그)를 사용했기 때문에 get방식이다!!!
		response.setContentType("text/plain");
		
		// 리퀘스트 파라미터 => id 꺼낸다.
		// id는 필수적으로 들어와야 한다. null(xxxx)
		int id = Integer.parseInt(request.getParameter("id"));
		
		// DB 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// delete
		String deleteQuery = "delete from `favorites` where `id` = " + id;
		try {
			// mysql에게 요청하여 수행할 수 있도록
			mysql.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// select (는 delete할 때 필요xxxxxx)
		
		// DB 연결 해제
		mysql.disconnection();
		
		// 목록 화면 이동 => 리다이렉트
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
