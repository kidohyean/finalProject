<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index 페이지</title>
<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/index.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
</head>
<body>
	<div class="pageSize">
		<!--header.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		<div class="container">
			<div class="index_image">웃는 사진</div>
			<div class="index_picture_container">
				<div class="index_left_bodymodel">인체모형도</div>

				<div class="index_right_chatbot">챗봇</div>
			</div>
			<div class="index_health_menu">
				<div class="health_button">유산소버튼</div>
				<div class="health_button">근력강화버튼</div>
				<div class="health_button">체형교정버튼</div>
			</div>





			<!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
</body>
</html>