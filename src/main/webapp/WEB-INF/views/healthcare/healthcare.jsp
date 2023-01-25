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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/healthcareList.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthcareGraph.js'/>"></script>
		<script src="<c:url value='/js/healthcare/naverMap.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthcareList.js'/>"></script>
		<script src="<c:url value='/js/healthcare/graph.js'/>"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	</head>
	<body>
		<div id="wrap">
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		    <section id="reserve">
				<div class="divName">
					<p class="diseaseName">신체 상태 입력</p>
					<hr class="healHr"/>
				</div>
				<div>
					<form id="healthTextForm">
						<div class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/weightIp.png'/>">
							<div class="healthText">키(cm)</div>
							<input type="text" name="height" id="heightInput" class="healthInput" value="180">
							<input type="submit" class="healthBt" value="입력">
						</div>
						<div class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/scale.png'/>">
							<div class="healthText">몸무게(kg)</div>
							<input type="text" name="weight" id="weightInput" class="healthInput" value="180">
							<input type="submit" class="healthBt" value="입력">
						</div>
						<div class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/bloodS.png'/>">
							<div class="healthText">혈당(mg/dl)</div>
							<input type="text" name="bloodS" id="bloodSInput" class="healthInput" value="180">
							<input type="submit" class="healthBt" value="입력">
						</div>
						<div id="bloodPDiv1" class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/bloodP.png'/>">
							<div class="healthText">수축기혈압(mmHg)</div>
							<input type="text" name="bloodP1" id="bloodPInput1" class="healthInput" value="180">
						</div>
						<div id="bloodPDiv2" class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/bloodP.png'/>">
							<div class="healthText">이완기혈압(mmHg)</div>
							<input type="text" name="bloodP2" id="bloodPInput2" class="healthInput" value="180">
							<input type="submit" class="healthBt" value="입력">
						</div>
						<div class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/disease.png'/>">
							<div class="healthText">질병</div>
							<input type="text" name="disease" id="diseaseInput" class="healthInput" value="180">
							<input type="submit" class="healthBt" value="입력">
						</div>
					</form>
				</div>
				<div class="diseaseList">
					<div class="diseaseDiv">질병</div>
					<div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div>
				</div>
				<!--
				<article id="disease">
					<div id="listSlider1" class="listSlider">
						<div class="triggerList trigger-left">
							<img class="slideListImg" src="<c:url value='/image/healthcare/up.png'/>">
						</div>
						<div class="viewportList">
							<ul class="slidesList-list">
								<li class="slideList">1</li>
								<li class="slideList">2</li>
								<li class="slideList">3</li>
								<li class="slideList">4</li>
								<li class="slideList">5</li>
								<li class="slideList">6</li>
								<li class="slideList">7</li>
							</ul>
						</div>
						<div class="triggerList trigger-right">
							<img class="slideListImg" src="<c:url value='/image/healthcare/down.png'/>">
						</div>
					</div>
				</article>
				-->
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
							<div id="graphSize1" class="graphSize">
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
							<div id="graphSize2" class="graphSize">
								<canvas id="graphMath2" class="graphMath"></canvas>
							</div>
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
							<div id="graphSize3" class="graphSize">
								<canvas id="graphMath3" class="graphMath"></canvas>
							</div>
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
							<div id="graphSize4" class="graphSize">
								<canvas id="graphMath4" class="graphMath"></canvas>
							</div>
						</div>
					</div>
				</article>
				<!--
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
							<div class="trigger trigger-up">
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
							<div class="trigger trigger-down">
								<img class="slideMapImg" src="<c:url value='/image/healthcare/down.png'/>">
							</div>
						</div>
						<div id="Map" class="mapDivDiv">
							맵
						</div>
						
					</div>
					
				</article>
				-->
				<br>
			</section>
			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</div>
	</body>
</html>