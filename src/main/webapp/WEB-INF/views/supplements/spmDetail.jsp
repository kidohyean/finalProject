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
		<div class="container-fluid">
		    <div class="container-fluid">
		      <ul class="nav navbar-nav">
		        <li><a id="len1" class="hoverable" href="<c:url value='/spm/spmCtg/${1}'/>">공통 & 필수</a></li>
		        <li><a id="len2" class="hoverable" href="<c:url value='/spm/spmCtg/${2}'/>">심혈관계</a></li>
		        <li><a id="len3" class="hoverable" href="<c:url value='/spm/spmCtg/${3}'/>">뼈 & 관절</a></li>
		        <li><a id="len4" class="hoverable" href="<c:url value='/spm/spmCtg/${4}'/>">눈 & 시력</a></li>
		        <li><a id="len4" class="hoverable" href="<c:url value='/spm/spmCtg/${5}'/>">간</a></li>
		        <li><a id="len4" class="hoverable" href="<c:url value='/spm/spmCtg/${6}'/>">소화기관</a></li>
		      </ul>
		    </div>
		</div>
		
		<div class="spmA" style="padding-top: 20px; ">

			<table width="1280">
					<tr><td rowspan="9" style=" text-align:center;"><img src="<c:url value='/images/${spm.spmImg}'/>" width="300" height="300"></td></tr>
					<tr><td>품명 </td><td style=" text-align:center;"> ${spm.spmName }</td></tr>
					<tr><td>상세설명 </td><td style=" text-align:center;">${spm.spmExplain }</td></tr>
					<tr><td>효과 </td><td style=" text-align:center;">${spm.spmEffect } </td></tr>
					<tr><td>카테고리 </td><td style=" text-align:center;">${spm.spmCtgN } </td></tr>
				</table>
				<br>
				<table width="1280">
					<tr><td>※주의사항 : ${spm.spmNotIngredient}</td></tr>
					<tr><td style=" text-align:center;"><img src="<c:url value='/images/${spm.spmIngredient }'/>" width="800" ></td></tr>
				</table>
		
			</div>
		<!-- footer -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
