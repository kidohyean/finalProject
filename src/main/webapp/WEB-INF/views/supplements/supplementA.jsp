<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>SupplementMenu</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmNav.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/supplement.js'/>"></script>
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
		<div id="emptySpace">
		</div>
		<!-- spm -->
		<div class="spmA" style="padding-top: 20px;">
		<section >
			<table width="800">
					<c:forEach var="spm" items="${spmList }">
			            <tr>
			               <td >
			               <a href="<c:url value='/supplements/spmDetail/${spm.spmName}'/>" >
			               <img src="<c:url value='/image/${spm.spmImg}' />" width="180" height="180" >
			               </a>
			               </td>
			               <td><ul>
			               <li><a href="<c:url value='/supplements/spmDetail/${spm.spmName}'/>" >
			                      ${spm.spmName }</a></li>
			               <li>${spm.spmEffect }</li>
			               <li>${spm.spmCtgN }</li>
			               </ul></td>
			               	               
			            </tr>
			         </c:forEach>
				</table><br>
		</section>
		</div>

		
		<!-- footer -->
		<div class="pageSize" style="margin-top: 0;">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
