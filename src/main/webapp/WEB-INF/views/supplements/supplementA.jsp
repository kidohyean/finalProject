<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>SupplementMenu</title>
<%-- 		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" /> --%>
<%-- 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css'/>"> --%>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/supplements/spmNav.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/supplement.js'/>"></script>
	</head>
	<body>
		<!-- header -->
<%-- 		<c:import url="/WEB-INF/views/headerFooter/header.jsp" /> --%>
		<!-- spmMenu -->
		<c:import url="/WEB-INF/views/supplements/spmNav.jsp" />
		
		<!-- spm종합 -->
		<section>
			<table width="800">
					<c:forEach var="spm" items="${spmList }">
			            <tr>
			            	
			               <td>
			               <a href="<c:url value='/supplements/spmDetail/${spm.spmName}'/>" >
			               <img src="<c:url value='/image/${spm.spmImg}' />" width="140" height="140">
			               </a>
			               </td>
			               <td><ul>
			               <li><a href="<c:url value='/supplements/spmDetail/${spm.spmName}'/>" >
			                      ${spm.spmName }</a></li>
			               <li>${spm.spmEffect }</li>
			               </ul></td>
			               <td>${spm.spmCtg }</td>
			              			               
			            </tr>
			         </c:forEach>
				</table><br><br>
		
		</section>
		
		
			
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
	</body>
</html>
