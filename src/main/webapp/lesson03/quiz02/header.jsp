<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<header class="d-flex align-items-center">
	<%-- 로고 영역 --%>
	<div class="logo">
		<%-- 로고를 누르면 홈으로 이동 --%>
		<h3><a href="list_template.jsp" class="text-success">Melong</a></h3>
	</div>
	
	<%-- 검색 영역 --%>
	<div class="search">
		<form method="get" action="/lesson03/quiz02/info_template.jsp">
		<!-- form, name, type="submit" 이 있어야 보낼 수 있다 -->
		<!-- name 이 있으면 따로 jsp뒤에 ?를 안 붙여줘도 됨 -->
			<div class="input-group ml-5">
				<input type="text" class="form-control col-6" name="search">
				<div class="input-group-prepend">
					<input type="submit" class="btn btn-info" value="검색">
				</div>
			</div>
		</form>
	</div>
</header>