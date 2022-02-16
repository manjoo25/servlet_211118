package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	private String url = "jdbc:mysql://localhost:3306/boram_211118"; // 도메인 뒤에 접속할 데이터베이스명까지 적는다.
	private String id = "root";
	private String pw = "root"; // 본인이 설정한 DB 비번
	
	private Connection conn = null; // null 생략 가능
	private Statement statement;
	private ResultSet res;
	
	// Singleton 패턴: MysqlService 라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	// DB 연결을 여러 객체에서 하지 않도록(한 객체에서만 할 수 있도록) 하기 위해서
	public static MysqlService getInstance() { // static -> new 하지 못하도록
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	public void connection() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB connection
			conn = DriverManager.getConnection(this.url, this.id, this.pw);
			
			// 3. statement 객체 사용 : DB와 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void disconnection() {
		try {
			// 연결 끊기
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ResultSet select(String query) throws SQLException { // 셀렉트하는 메소드
		res = statement.executeQuery(query);
		return res;
	}
	
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}
