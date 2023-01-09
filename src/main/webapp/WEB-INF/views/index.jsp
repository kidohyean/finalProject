<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index 페이지</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	</head>
	<body>
		<div>

			<!--header.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
			<h3>index main123545</h3>
			<!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>