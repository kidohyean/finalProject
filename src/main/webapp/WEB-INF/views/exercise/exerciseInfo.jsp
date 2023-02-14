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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exercise/videoslide.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/exercise/exerciseInfo.js'/>"></script>
	</head>
	<body>
		<div class="pageSize">
			<!--header.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
			<!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
			
		</div>
		<section class="bgTop bgSub5 pc">
			<div class="slogan">
				<p class="a">운동정보</p>
				<p>부위별 추천 운동과 루틴을 통한 건강 관리!</p>
			</div>
		</section>
		<div class="wrap">
			<div class="tab">
				<div class="flex">
					<ul class="list">
					<li><a class="panel active">등</a></li>
					<li><a class="panel">어깨/목</a></li>
					<li><a class="panel">팔/다리</a></li>
					<li><a class="panel">허리</a></li>
					</ul>
				</div>
			</div>
			<div class="rank">
				<p class="weekRank">이번주 등 운동루틴 순위</p>
				<div class="rank_list_div">
					<ul class="rank_list">
						<li>등 조이기 운동 </li>
						<li>덤벨 로우 </li>
						<li>라잉 덤벨 프레스 </li>
					</ul>
				</div>
			</div>
			<div>
				<p>오늘의 추천 영상</p>
				
			</div>


			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>