<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/supplementMenu.css'/>">
	</head>
	<body>
		<!-- header -->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
	
		<div class="menu">
		 <div class="menu-con" style="background-image:url(../image/spmtotal.jpg); height:800px; width:318px;">
		  <p><a href="<c:url value='/spm/spmCtg/${1}'/>">종합</a></p> </div>
		  
		  <div class="menu-con" style="background:rgb(160,160,170);">
		  <p><a href="<c:url value='/spm/spmCtg/${2}'/>">혈관</a></p></div>  
		  
		  <div class="menu-con" style="background:mediumseagreen;">
		  <p><a href="<c:url value='/spm/spmCtg/${3}'/>">뼈</a></p></div> 
		  
		  <div class="menu-con" style="background:teal;">
		  <p><a href="<c:url value='/spm/spmCtg/${4}'/>">눈</a></p></div> 
		  
		  <div class="menu-con" style="background:rgb(70,70,70);">
		  <p><a href="<c:url value='/spm/spmCtg/${5}'/>">간</a></p></div>
		  
		  <div class="menu-con" style="background:teal;">
		  <p><a href="<c:url value='/spm/spmCtg/${6}'/>">장</a></p></div>
		</div>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
	</body>
</html>
