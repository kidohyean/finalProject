<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>영양제</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmA.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmNav.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/exercise/exerciseInfo.js'/>"></script>
	</head>
	<body>
		<!-- header -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		</div>
		<!-- spmMenu -->
		<c:import url="/WEB-INF/views/supplements/spmNav.jsp" />
		
		<div class="spmA" style="padding: 50px;">

			<table width="800">
					<tr><td rowspan="9"><img src="<c:url value='/images/${spm.spmImg}'/>" width="300" height="250"></td></tr>
					<tr><td>품명 </td><td> ${spm.spmName }</td></tr>
					<tr><td>상세설명 </td><td>${spm.spmExplain }</td></tr>
					<tr><td>효과 </td><td>${spm.spmEffect } </td></tr>
					<tr><td>카테고리 </td><td>${spm.spmCtgN } </td></tr>
				</table>

				<table width="800">
					<tr><td>※주의사항 : ${spm.spmNotIngredient}</td></tr>
					<tr><td>${spm.spmIngredient }</td></tr>
				</table>
		
			</div>
		<!-- footer -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
