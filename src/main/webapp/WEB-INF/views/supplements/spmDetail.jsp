<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>영양제</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmNav.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	</head>
	<body>
		<!-- header -->
		
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		</div>
		<!-- spmMenu -->
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
		
		<div class="spmA" style="padding-top: 20px; ">

			<table width="1280">
					<tr><td rowspan="9" style=" text-align:center;">
					<img src="<c:url value='/images/${spm.spmImg}'/>" width="300" height="300"></td></tr>
					<tr><td>품명 </td><td style=" text-align:center;"> ${spm.spmName }</td></tr>
					<tr><td>상세설명 </td><td style=" text-align:center;">${spm.spmExplain }</td></tr>
					<tr><td>효과 </td><td style=" text-align:center;">${spm.spmEffect } </td></tr>
				</table>
				<br>
				<table width="1280">
					<tr><td>※주의사항 : ${spm.spmNotIngred}</td></tr>
					<tr><td style=" text-align:center;"><img src="<c:url value='/images/${spm.spmIngred }'/>" width="500" ></td></tr>
				</table>
		
			</div>
		<!-- footer -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
