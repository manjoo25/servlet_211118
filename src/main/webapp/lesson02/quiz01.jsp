<%@ page import = "java.util.Iterator" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Arrays" %>
<%-- <%@ page import = "java.util.Iterator, List, Arrays" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
<!-- 1. 1부터 n까지의 합계를 구하는 함수
jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. -->
<%!
	// request가 어떻게 되든 계속 머물러 있음 누적됨
	// private int sum = 0; 쓰지 말아야 함!
	
	// public 리턴타입 메소드이름(매개변수선언) {
	//		자바코드
	// }
	// return 값!!!
	public int addition(int a) {
		int sum = 0;
		for (int i = 1; i <= a; i++) {
			sum += i;
		}
		return sum;
	}
%>
<h1>1부터 50까지의 합은 <%= addition(50) %>입니다.</h1>

<!-- 2. 점수들의 평균 구하기
스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요. -->
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	// 꼬오오오오옥 캐스팅 해주기!!!!!!! 뚜리링
	double avg = (double)sum / scores.length;
%>
<h1>평균 점수는 <%= avg %>점 입니다.</h1>

<!-- 3. 채점 결과
아래 채점표로 시험점수가 몇점인지 구하세요. -->

<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	// 강사님
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if(scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
	}
	
	// 나
	Iterator<String> iter = scoreList.iterator();
	
	sum = 0;
	
	while (iter.hasNext()) {
		String line = iter.next(); // hasNext(x) -> next(o)
		if (line.equals("O")) {
			sum += 10;
		}
	}
%>
<h1>채점 결과는 <%= sum %>점 입니다.</h1>
<h1>채점 결과는 <%= score %>점 입니다.</h1>

<!-- 4. 나이 구하기
주어진 생년월일을 가진 사람의 나이를 구하세요. -->
<%
	String birthDay = "20010820";
	Integer birth = Integer.valueOf(birthDay.substring(0, 4));
	// 여기서 바로 출력하는 방법
	// out.print(birth);
	int age = 2022 - birth + 1;
%>
<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>
</body>
</html>