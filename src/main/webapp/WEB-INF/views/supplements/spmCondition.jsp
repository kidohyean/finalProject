<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성분별 카테고리</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmNav.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmback.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/supplement.js'/>"></script>
	</head>
	<body>
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		</div>
		
		<div class="subtitle">
			<h1>영양 더하기</h1>
			<h2>나에게 필요한 영양을 채워주세요</h2>
		</div>
		
		<article class="spm-Main">
		
		<div class="spmMenu">
		
			<div id="left">
				<ul class="sidebar-menu">
				    <li><span class="nav-section-title"></span></li>
				    <li ><a href="<c:url value='/spm/listSupplement'/>"><span class="fa fa-university"></span>전체 영양제</a></li>
				    <li class="have-children"><a href="#"><span class="fa fa-tags"></span>영양제 카테고리</a>
				      <ul>
				        <li><a  href="<c:url value='/spm/condition'/>" >성분별</a></li>
				        <li><a href="<c:url value='/spm/effect'/>" >건강고민별</a></li>
				      </ul>
				    </li>
				  </ul>
			</div>
			
			<div class="spmprd">
				<div class="totalSpm" style="margin-top:20px; margin-right:50px; color:black; font-size:25px;">
					<h1>성분별</h1>
				</div>
				<br>
				<hr>
				<br>
			
			
			
			</div>
			</article>
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="pageSize" style="margin-top: 0;">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
