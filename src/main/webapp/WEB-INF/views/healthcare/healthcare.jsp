<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>건강알리미</title>
		<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/healthcare.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/naverMap.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthcare.js'/>"></script>
		<script src="<c:url value='/js/healthcare/naverMap.js'/>"></script>
		<script src="<c:url value='/js/healthcare/graph.js'/>"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	</head>
	<body>
		<div id="wrap">
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		    <section id="reserve">
				<div class="divName">
					<p class="diseaseName">현재 상태</p>
					<hr class="healHr"/>
				</div>
				<article id="disease">
					<div>
						
					</div>
				</article>
				<div class="divName">
					<p class="graphName">신체 상태</p>
					<hr class="healHr"/>
				</div>
				<article id="graph1" class="graph">
					<div id="graphWeight" class="graphDiv">
						<div id="imgHiddenDiv1" class="imgHiddenDiv">
							<img src="<c:url value='/image/healthcare/weight.png'/>">
							<p>체중</p>
						</div>
						<div id="graphWeightHiddenDiv" class="graphHiddenDiv">
							<img class="graphImg" src="<c:url value='/image/healthcare/weight.png'/>">
							<p id="graphName1" class="graphName">체중</p>
							<hr id="healHr1" class="healHr"/>
							<div class="graphSize">
								<canvas id="graphMath1" class="graphMath" ></canvas>
							</div>
						</div>
					</div>

					<div id="graphBMI" class="graphDiv">
						<div id="imgHiddenDiv2" class="imgHiddenDiv">
							<img src="<c:url value='/image/healthcare/bmi.png'/>">
							<p>체질량지수</p>
						</div>
						<div id="graphBMIHiddenDiv" class="graphHiddenDiv">
							<img class="graphImg" src="<c:url value='/image/healthcare/bmi.png'/>">
							<p id="graphName2" class="graphName">체질량지수</p>
							<hr id="healHr2" class="healHr"/>
							<canvas id="graphMath2" class="graphMath"></canvas>
						</div>
					</div>
					<div id="graphBloodPressure" class="graphDiv">
						<div id="imgHiddenDiv3" class="imgHiddenDiv">
							<img src="<c:url value='/image/healthcare/blood.png'/>">
							<p>혈압</p>
						</div>
						<div id="graphBloodPressureHiddenDiv" class="graphHiddenDiv">
							<img class="graphImg" src="<c:url value='/image/healthcare/blood.png'/>">
							<p id="graphName3" class="graphName">혈압</p>
							<hr id="healHr3" class="healHr"/>
							<canvas id="graphMath3" class="graphMath"></canvas>
						</div>
					</div>
					<div id="graphBloodSugar" class="graphDiv">
						<div id="imgHiddenDiv4" class="imgHiddenDiv">
							<img src="<c:url value='/image/healthcare/sugarblood.png'/>">
							<p>혈당</p>
						</div>
						<div id="graphBloodSugarHiddenDiv" class="graphHiddenDiv">
							<img class="graphImg" src="<c:url value='/image/healthcare/sugarblood.png'/>">
							<p id="graphName4" class="graphName">혈당</p>
							<hr id="healHr4" class="healHr"/>
							<canvas id="graphMath4" class="graphMath"></canvas>
						</div>
					</div>
				</article>
				<div class="divName">
					<p class="mapName">주변 약국 정보</p>
					<hr class="healHr"/>
				</div>
				<article class="naverMap">
					<div id="mapAddress" class="mapDiv">
						<p id="mapSearchFont1" class="mapSearchFont">지역 검색:</p>
						<form id="mapSearchForm1" class="mapSearchForm">
							<input type="text" id="mapSearch1" class="mapSearch" name="mapSearch">
							<input type="submit" id="mapSearchBt1" class="mapSearchBt" value="검색">
						</form>
					</div>
					<div id="pharmacyMap1" class="pharmacyMap">
						<div id="pharmacy" class="pharmacySlider">
							<div class="trigger trigger-left">
								<img class="slideMapImg" src="<c:url value='/image/healthcare/up.png'/>">
							</div>
							<div class="viewport">
								<ul class="slides-list">
									<li class="slide">1</li>
									<li class="slide">2</li>
									<li class="slide">3</li>
									<li class="slide">4</li>
									<li class="slide">5</li>
									<li class="slide">6</li>
									<li class="slide">7</li>
								</ul>
							</div>
							<div class="trigger trigger-right">
								<img class="slideMapImg" src="<c:url value='/image/healthcare/down.png'/>">
							</div>
						</div>
						<div id="Map" class="mapDivDiv">
							맵
						</div>
						
					</div>
					
				</article>
			</section>
			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>