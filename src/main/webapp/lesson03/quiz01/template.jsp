<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
	<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<style>
		#wrap {width:100%;}
		.logo {height:70px}
		header {font-size:30px}
		section {height:100%}
		.nav-link:hover {color:black;}
		a {color:white;}
		/* .bottom {height:70px; background-color:yellow} */
	</style>
</head>
<body>
	<div id="wrap" class="container">
		<jsp:include page="header.jsp"/>
		<section class="menu-bar">
			<div class="menu bg-danger">
				<ul class="nav nav-fill">
					<li class="nav-item"><a href="<jsp:include page="menu.jsp"/>" class="nav-link">전체</a></li>
					<li class="nav-item"><a href="<jsp:include page="menu.jsp"/>" class="nav-link">지상파</a></li>
					<li class="nav-item"><a href="<jsp:include page="menu.jsp"/>" class="nav-link">드라마</a></li>
					<li class="nav-item"><a href="<jsp:include page="menu.jsp"/>" class="nav-link">예능</a></li>
					<li class="nav-item"><a href="<jsp:include page="menu.jsp"/>" class="nav-link">영화</a></li>
					<li class="nav-item"><a href="<jsp:include page="menu.jsp"/>" class="nav-link">스포츠</a></li>
				</ul>
			</div>
			<div class="content">
				<jsp:include page="content.jsp"/>
			</div>
			<jsp:include page="footer.jsp"/>
		</section>
	</div>
</body>
</html>