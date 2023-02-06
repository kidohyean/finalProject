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
					<li><a href="#" class="panel active">등</a></li>
					<li><a href="#" class="panel">어깨/목</a></li>
					<li><a href="#" class="panel">팔/다리</a></li>
					<li><a href="#" class="panel">허리</a></li>
					</ul>
				</div>
			</div>
			<article>
				<div id="contents1" class="content on">
					<h3>추천 동영상</h3>
					<article id="exVideo">
						<div class="triggerList trigger-left">
							<img class="slideListImg" src="<c:url value='/image/healthcare/left.png'/>">
						</div>
						<div id="listSlider1" class="listSlider">
							<div class="viewportList">
								<ul class="slidesList-list">
									<li class="slideList"><iframe width="380" height="245" src="https://www.youtube.com/embed/7RC_4SyQitQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></li>
									<li class="slideList"><iframe width="380" height="245" src="https://www.youtube.com/embed/myNjmnvI6x0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></li>
									<li class="slideList"><iframe width="380" height="245" src="https://www.youtube.com/embed/WPkNDnnCPXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></li>
									<li class="slideList"><iframe width="380" height="245" src="https://www.youtube.com/embed/7RC_4SyQitQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></li>
									<li class="slideList"><iframe width="380" height="245" src="https://www.youtube.com/embed/myNjmnvI6x0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></li>
									<li class="slideList"><iframe width="380" height="245" src="https://www.youtube.com/embed/WPkNDnnCPXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></li>
								</ul>
							</div>
						</div>
						<div class="triggerList trigger-right">
							<img class="slideListImg" src="<c:url value='/image/healthcare/right.png'/>">
						</div>
					</article>
					<div id="routine" class="exRoutine">
						<h3>추천 운동 루틴</h3>
						<form>
							<input type="submit" id="routine1" class="routineBtn" value="#등 조이기 운동" formaction="/exercise/detailViewRoutineInfo/R001">
							<input type="submit" id="routine1-1" class="routineBtn" value="#덤벨 로우" formaction="/exercise/detailViewRoutineInfo/R002">
							<input type="submit" id="routine1-2" class="routineBtn" value="#라잉 덤벨 프레스" formaction="/exercise/detailViewRoutineInfo/R003">
							<input type="submit" id="routine1-3" class="routineBtn" value="#케어링 오버헤드 프레스" formaction="/exercise/detailViewRoutineInfo/R004">
						</form>
					</div>
	
					<div id="stretch" class="exstretch">
						<h3>추천 스트레칭 영상</h3>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/xW3JI2eI7nM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/pCyT7MWC_H4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/4TwQwVFLi4Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					</div>	
				</div>
		
				<div id="contents2" class="content">
					<h3>추천 동영상</h3>
					<iframe width="380" height="245" src="https://www.youtube.com/embed/7RC_4SyQitQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					<iframe width="380" height="245" src="https://www.youtube.com/embed/myNjmnvI6x0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					<iframe width="380" height="245" src="https://www.youtube.com/embed/WPkNDnnCPXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			
			
					<div id="routine" class="exRoutine">
						<h3>추천 운동 루틴</h3>
						<form>
							<input type="submit" id="routine1" class="routineBtn" value="#숄더프레스" formaction="/exercise/detailViewRoutineInfo/1">
							<input type="submit" id="routine1-1" class="routineBtn" value="#덤벨로우" formaction="/exercise/detailViewRoutineInfo/2">
							<input type="submit" id="routine1-2" class="routineBtn" value="#시티드로우" formaction="/exercise/detailViewRoutineInfo/3">
							<input type="submit" id="routine1-3" class="routineBtn" value="#원암로우" formaction="/exercise/detailViewRoutineInfo/4">
						</form>
					</div>
			
					<div id="stretch" class="exstretch">
						<h3>추천 스트레칭 영상</h3>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/xW3JI2eI7nM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/pCyT7MWC_H4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/4TwQwVFLi4Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						
					</div>
			
				</div>
		
				<div id="contents3" class="content">
					<h3>추천 동영상</h3>
					<iframe width="380" height="245" src="https://www.youtube.com/embed/7RC_4SyQitQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					<iframe width="380" height="245" src="https://www.youtube.com/embed/myNjmnvI6x0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					<iframe width="380" height="245" src="https://www.youtube.com/embed/WPkNDnnCPXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			
			
					<div id="routine" class="exRoutine">
						<h3>추천 운동 루틴</h3>
							<form>
								<input type="submit" id="routine1" class="routineBtn" value="#숄더프레스 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/1">
								<input type="submit" id="routine1-1" class="routineBtn" value="#덤벨로우 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/2">
								<input type="submit" id="routine1-2" class="routineBtn" value="#시티드로우 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/3">
								<input type="submit" id="routine1-3" class="routineBtn" value="#원암로우 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/4">
							</form>
					</div>
					<div id="stretch" class="exstretch">
						<h3>추천 스트레칭 영상</h3>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/xW3JI2eI7nM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/pCyT7MWC_H4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/4TwQwVFLi4Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						
					</div>
				</div>
		
				<div id="contents4" class="content">
					<h3>추천 동영상</h3>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/7RC_4SyQitQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/myNjmnvI6x0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/WPkNDnnCPXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			
			
					<div id="routine" class="exRoutine">
						<h3>추천 운동 루틴</h3>
						<form>
							<input type="submit" id="routine1" class="routineBtn" value="#숄더프레스 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/1">
							<input type="submit" id="routine1-1" class="routineBtn" value="#덤벨로우 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/2">
							<input type="submit" id="routine1-2" class="routineBtn" value="#시티드로우 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/3">
							<input type="submit" id="routine1-3" class="routineBtn" value="#원암로우 15개씩 4세트" formaction="/exercise/detailViewRoutineInfo/4">
						</form>
					</div>
					<div id="stretch" class="exstretch">
						<h3>추천 스트레칭 영상</h3>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/xW3JI2eI7nM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/pCyT7MWC_H4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						<iframe width="380" height="245" src="https://www.youtube.com/embed/4TwQwVFLi4Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
						
					</div>
				</div>
			</article>


			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>