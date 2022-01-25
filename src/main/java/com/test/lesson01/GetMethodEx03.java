package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/plain");
		response.setContentType("text/json");
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age"));
		// 이 구문 때문에 위에 세개의 링크는 에러 값이 null값으로 변하기 때문
		
		PrintWriter out = response.getWriter();
//		out.println("GET Method 호출");
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// JSON(Javascript Object Notation)으로 response 구성하기
		// {"user_id":"marobiana", "name":"김승주", "age":20}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
