<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>커뮤니티</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/community.css'/>">
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/list.css'/>">
        <script src="<c:url value='/js/communi/list.js'/>"></script>
    </head>
    <body>
        <div class="pageSize">
			<!--header.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
            <c:choose>
                <c:when test="${empty mode}">
                    <c:import url="/WEB-INF/views/communi/list.jsp" />
                </c:when>
                <c:when test="${mode == insert}">
                    <c:import url="/WEB-INF/views/communi/write.jsp" />
                </c:when>
            </c:choose>
           
            
			
		</div>
        <!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
    </body>
</html>