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
		<script src="<c:url value='/js/exercise/exerciseInfo.js'/>"></script>
	</head>
	<body>
		<!-- header -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		</div>
		
		<!-- spmMenu -->
		 <div class="tab">
	        <div class="flex">
	        <a class="panel active" href="<c:url value='/spm/spmCtg/${1}'/>">종합</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${2}'/>">혈관</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${3}'/>">뼈</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${4}'/>">눈</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${5}'/>">간</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${6}'/>" >장</a>
			</div>
		</div>
		
		<!-- spm -->
		<div class="spmA" style="padding-top: 50px;">
		<section >
			<table width="800">
					<c:forEach var="spm" items="${spmList }">
			            <tr>
			               <td >
			               <a href="<c:url value='/supplements/spmDetail/${spm.spmName}'/>" >
			               <img src="<c:url value='/image/${spm.spmImg}' />" width="200" height="200" >
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
				</table><br><br>
		</section>
		</div>
		
			
		
		<!-- footer -->
		<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>
