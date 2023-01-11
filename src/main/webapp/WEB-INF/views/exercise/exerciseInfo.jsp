<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index 페이지</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exercise/exerciseInfo.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/exercise/exerciseInfo.js'/>"></script>
	</head>
	<body>
		<div class="pageSize">
			<!--header.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
			<!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			
		</div>
		
<div class="tab">
        <div class="flex">
            <a href="#" class="panel active">등/어깨</a>
            <a href="#" class="panel">목</a>
            <a href="#" class="panel">팔/다리</a>
            <a href="#" class="panel">허리</a>
        </div>
    </div>
    <article>
    <div id="contents1" class="content on">
        <h3>추천 동영상</h3>
        <iframe width="380" height="245" src="https://www.youtube.com/embed/7RC_4SyQitQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		<iframe width="380" height="245" src="https://www.youtube.com/embed/myNjmnvI6x0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		<iframe width="380" height="245" src="https://www.youtube.com/embed/WPkNDnnCPXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		<a href="<c:url value='/exercise/exerciseVideo'/>">더보기</a>
		
    </div>

    <div id="contents2" class="content">
        <h3>추천 동영상</h3>
       <video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>				
		<video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>				
		<video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>
    </div>
    
    <div id="contents3" class="content">
        <h3>추천 동영상</h3>
      <video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>				
		<video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>				
		<video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>
    </div>
    
    <div id="contents4" class="content">
        <h3>추천 동영상</h3>
       <video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>				
		<video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>				
		<video><source src="<c:url value='/video/동영상1.mp4'/>" type="video/mp4" /></video>
    </div>
    </article>
    <article>
    <div id="routine" class="exRoutine">
    	<h3>추천 운동 루틴</h3>
    	<input type="submit" id="routine1" class="routineBtn" value="#숄더프레스 15개씩 4세트">
    	<input type="submit" id="routine1" class="routineBtn" value="#덤벨로우 15개씩 4세트">
    	<input type="submit" id="routine1" class="routineBtn" value="#시티드로우 15개씩 4세트">
    	<input type="submit" id="routine1" class="routineBtn" value="#원암로우 15개씩 4세트">
   </div>
   </article>
		
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
	</body>
</html>