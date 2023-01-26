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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/agespm.css'/>">
	</head>
	<body>
		<!-- header -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		</div>
		<div id="agespm">
			<h3>추천 영양제 조합</h3>
			
		</div>
		<div class="spmmenu">
		 <div class="menu-con" style="background-image:url(../image/spmtotal.png); height:800px; width:213px;">
		  <p><a href="<c:url value='/spm/spmCtg/${1}'/>">공통 & 필수</a></p> </div>
		  
		  <div class="menu-con" style="background-image:url(../image/spmheart.png); height:800px; width:213px;">
		  <p><a href="<c:url value='/spm/spmCtg/${2}'/>">심혈관계</a></p></div>  
		  
		  <div class="menu-con" style="background-image:url(../image/spmbone.png); height:800px; width:213px;">
		  <p><a href="<c:url value='/spm/spmCtg/${3}'/>">뼈, 관절 & 연골</a></p></div> 
		  
		  <div class="menu-con" style="background-image:url(../image/spmeyes.png); height:800px; width:213px;">
		  <p><a href="<c:url value='/spm/spmCtg/${4}'/>">눈 & 시력</a></p></div> 
		  
		  <div class="menu-con" style="background-image:url(../image/spmgan.png); height:800px; width:213px;">
		  <p><a href="<c:url value='/spm/spmCtg/${5}'/>">간</a></p></div>
		  
		  <div class="menu-con" style="background-image:url(../image/spmjang.png); height:800px; width:213px;">
		  <p><a href="<c:url value='/spm/spmCtg/${6}'/>">소화기관</a></p></div>
		</div>
		
		
		<!-- footer -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
