package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request -> 가공(서블릿) -> response
		response.setCharacterEncoding("utf-8");	// 글자가 깨지지 않게!!
		response.setContentType("text/plain"); // 한글이 나올 수 있게!!!!
		
		PrintWriter out = response.getWriter();
//		out.print("오늘의 날짜는"); -> 안적어도 됨!!!
		
		Date now = new Date(); // 오늘의 날짜를 지정? 객체를 만든다? 맞대!!!
		// now라는 공간에 new Date()에서 얻어온 값을 던져놓음 저장공간?
//		out.print(now); -> 따로 지정 안해도 됨
		
		// 생성자 파라미터에 원하는 값을 넣어주면 됨 아래에 따로 하지 않아도 한번에 할 수 있음
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일");
		out.print(sdf.format(now));
		// format메소드 now에 있는 string값을 가져와서 sdf에 때려 넣음
		
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
//		out.print("오늘의 날짜는 " + sdf.format(now)); // 여따가 같이 하면 되지롱
	}
}
