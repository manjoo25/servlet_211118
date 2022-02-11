package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson04/quiz01")
public class Lesson05Quiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// insert
//		String insertQuery = "insert into `real_estate` (`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
//				+ "values (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
//		try {
//			mysql.update(insertQuery); // 이걸 먼저 입력해야 예외처리 할 수 있다
//		} catch (SQLException e1) {
//			e1.printStackTrace();
//		}
		
		// select
		String selectQuery = "select * from `real_estate` order by `id` desc limit 10";
		
		// 결과 출력
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultSet = mysql.select(selectQuery);
			while (resultSet.next()) {				
				out.print("매물 주소: " + resultSet.getString("address"));
				out.print(", 면적: " + resultSet.getInt("area"));
				out.print(", 타입: " + resultSet.getString("type"));
				out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 강사님이 하신 결과 출력
		try {
//			String selectQuery = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10";
			ResultSet resultSet = mysql.select(selectQuery);
			
			// 출력
			PrintWriter out = response.getWriter();
			
			while (resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				out.println("매물 주소: " + address + ", 면적: " + area + ", 타입: " + type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysql.disconnection();
	}
}
