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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/state.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/naverMap.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/healthcareList.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthcareInput.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthcareGraph.js'/>"></script>
		<script src="<c:url value='/js/healthcare/naverMap.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthcareList.js'/>"></script>
		<script src="<c:url value='/js/healthcare/healthCalendar.js'/>"></script>
		<script src="<c:url value='/js/healthcare/graph.js'/>"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		
	</head>
	<body>
		<div id="wrap">
			<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
			<div id="healthcareBN">
				<p>
					오늘 고생하셨습니다.<br/>
					당신의 하루를 측정하세요.
				</p>
			</div>
			<div id="state">
				<div id="stateDiv1">
					<form>
						
						<div id="heightDiv">
								<p id="heightName">키</p>
								<input class="HInput" type="text" value="180cm" readonly/>
								<input class="formHBt" type="submit" value="입력"/>
								<input id="cancelHBt" class="formHBt" type="button" value="취소"/>
						</div>
					</form>
					
					<div id="todayDiv">
						<p id="todayDivName">오늘의 운동</p>
						<ul id="todayList">
							<li>
								오늘 뭐하지 뭐하지
							</li>
							<li>오늘 뭐하지 뭐하지</li>
							<li>오늘 뭐하지 뭐하지</li>
							<li>오늘 뭐하지 뭐하지</li>
							<li>오늘 뭐하지 뭐하지</li>
						</ul>
					</div>
				</div>
				<div id="stateDiv2">
					<div id="weightDiv" class="stateDiv2Item">
						
						<div class="lineCSS">
							<p class="name2">체중</p>
							
							<button>입력</button>
						</div>
						
						<p class="value2">85kg</p>
						<div class="inputDiv">
							<hr class="inputHr"/>
							<form class="stateForm">
								<input class="inputForm" type="text" placeholder="숫자입력(예:180.0)" />
								<input class="formBt" type="submit" value="입력"/>
								<input class="formBt" type="button" value="취소"/>
							</form>
						</div>
						<div class="stateValue">체중을 입력하세요.</div>
					</div>
					<div id="BMIDiv" class="stateDiv2Item">
						<div class="lineCSS">
							<p class="name2">BMI</p>
							<button style="visibility: hidden;">입력</button>
						</div>
						
						
						<p class="value2">23.1%</p>
						<div class="inputDiv">
							<hr class="inputHr"/>
							<form class="stateForm">
								<input class="inputForm" type="text" placeholder="숫자입력(예:180.0)" />
								<input class="formBt" type="submit" value="입력"/>
								<input class="formBt" type="button" value="취소"/>
							</form>
						</div>
						<div class="stateValue">키를 먼저 입력하세요.</div>
					</div>
					<div id="BloodSDiv" class="stateDiv2Item">
						<div class="lineCSS">
							<p class="name2">혈당</p>
							
							<button>입력</button>
						</div>
						
						<p class="value2">85kg</p>
						<div class="inputDiv">
							<hr class="inputHr"/>
							<form id="stateFormBS" class="stateForm">
								<input class="inputForm" type="text" placeholder="숫자입력(예:180.0)" />
								<input class="formBt" type="submit" value="입력"/>
								<input class="formBt" type="button" value="취소"/>
							</form>
						</div>
						<div class="stateValue">혈당을 입력하세요.</div>
					</div>
					<div id="BloodPDiv" class="stateDiv2Item">
						<div class="lineCSS">
							<p class="name2">혈압</p>
							
							<button>입력</button>
						</div>
						<div class="valueLineCSS">
							<p class="BPvalueName">수축기혈압</p>
							<p class="BPvalueName">-</p>
							<p class="BPvalueName">이완기혈압</p>
						</div>
						<div class="valueLineCSS">
							<p id="BloodPValue1" class="value3">120</p>
							<p class="value3">-</p>
							<p id="BloodPValue2" class="value3">75</p>
						</div>
						<div class="inputDiv">
							<hr class="inputHr2"/>
							<form class="stateForm2">
								<div class="stateFormDiv">
									<input class="inputFormBP" type="text" placeholder="수축기(예:120)" />
									<p class="BPvalueBar">-</p>
									<input class="inputFormBP" type="text" placeholder="이완기(예:75)" />
								</div>
								<div id="inputBtDiv">
									<input class="formBt" type="submit" value="입력"/>
									<input class="formBt" type="button" value="취소"/>
								</div>
							</form>
						</div>
						<div class="stateValue2">혈압을 입력하세요.</div>
					</div>
				</div>
			</div>
			
			<!--
		    <section id="reserve">
				<div class="divName">
					<p class="diseaseName">신체 상태 입력</p>
					<hr class="healHr"/>
				</div>
				<div>
					<div class="healthTextBigDiv">
						<form id="healthTextForm1" class="healthTextForm">
							<div class="healthTextDiv">
								<img src="<c:url value='/image/healthcare/weightIp.png'/>">
								<div class="healthText">키(cm)</div>
								<input type="text" name="hcdValue" id="heightInput" class="healthInput" value="${voList[0].hcdValue}">
								<input type="hidden" id="heightInputName" name="hcdName" value="키" id="heightInputName">
								<input type="submit" class="healthBt" value="수정">
							</div>
						</form>
						<form id="healthTextForm2" class="healthTextForm">
							<div class="healthTextDiv">
								<img src="<c:url value='/image/healthcare/scale.png'/>">
								<div class="healthText">몸무게(kg)</div>
								<input type="text" name="hcdValue" id="weightInput" class="healthInput">
								<input type="hidden" id="weightInputName" name="hcdName" value="몸무게">
								<input type="submit" class="healthBt" value="입력">
							</div>
						</form>
						<form id="healthTextForm3" class="healthTextForm">
							<div class="healthTextDiv">
								<img src="<c:url value='/image/healthcare/bloodS.png'/>">
								<div class="healthText">혈당(mg/dl)</div>
								<input type="text" name="hcdValue" id="bloodSInput" class="healthInput">
								<input type="hidden" id="bloodSInputName" name="hcdName" value="혈당">
								<input type="submit" class="healthBt" value="입력">
							</div>
						</form>
						<form id="healthTextForm4" class="healthTextForm">
							<div id="bloodPDiv1" class="healthTextDiv">
								<img src="<c:url value='/image/healthcare/bloodP.png'/>">
								<div class="healthText">수축기혈압(mmHg)</div>
								<input type="text" name="hcdValue1" id="bloodPInput1" class="healthInput">
								<input type="hidden" id="bloodPName1" name="hcdName1" value="수축기혈압">
							</div>
							<div id="bloodPDiv2" class="healthTextDiv">
								<img src="<c:url value='/image/healthcare/bar.png'/>">
								<div class="healthText">이완기혈압(mmHg)</div>
								<input type="text" name="hcdValue2" id="bloodPInput2" class="healthInput">
								<input type="hidden" id="bloodPName2" name="hcdName" value="이완기혈압">
								<input type="submit" class="healthBt" value="입력">
							</div>
						</form>
						<form id="healthTextForm5" class="healthTextForm">
							<div class="healthTextDiv">
								<img src="<c:url value='/image/healthcare/disease.png'/>">
								<div class="healthText">질병</div>
								<input type="text" name="hcdValue" id="diseaseInput" class="healthInput">
								<input type="hidden" id="diseaseInputName" name="hcdName" value="질병">
								<input type="submit" class="healthBt" value="입력">
							</div>
						</form>
					</div>
				</div>
				<div class="divName">
					<p class="diseaseName">현재 질병 10개 (제한 10개)</p>
					<hr class="healHr"/>
				</div>
				<div class="diseaseDivList">
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
					<div>질병</div>
				</div>
				<article id="disease">
					<div class="triggerList trigger-left">
						<img class="slideListImg" src="<c:url value='/image/healthcare/left.png'/>">
					</div>
					<div id="listSlider1" class="listSlider">
						
						<div class="viewportList">
							<ul class="slidesList-list">
								<li class="slideList">
									<div>
										<a>추천링크</a>
										<p>이름</p>
									</div>
								</li>
								<li class="slideList">2</li>
								<li class="slideList">3</li>
								<li class="slideList">4</li>
								<li class="slideList">5</li>
								<li class="slideList">6</li>
								<li class="slideList">7</li>
							</ul>
						</div>
					</div>
					<div class="triggerList trigger-right">
						<img class="slideListImg" src="<c:url value='/image/healthcare/right.png'/>">
					</div>
				</article>
				-->
				<div class="divName">
					<!--<p class="graphName">신체 상태</p>-->
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
				<div class="calendar">
					<div id="calendarDiv">
						<table>
							<thead>
								<tr><th colspan='2'><p id="prevMonth"><</p></th><th id="year-mouth" colspan='3'></th><th  colspan='2'><p id="nextMonth">></p></th></tr>
								<tr>
									<th id="sunday" class="dayWeek">일</th>
									<th class="dayWeek">월</th>
									<th class="dayWeek">화</th>
									<th class="dayWeek">수</th>
									<th class="dayWeek">목</th>
									<th class="dayWeek">금</th>
									<th id="saturday" class="dayWeek">토</th>
								</tr>
							</thead>
							<tbody id="dateBody">

							</tbody>
						</table>
					</div>
					<div id="calendarItemList"></div>
				</div>
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


<!--
						<div class="healthTextDiv">
							<img src="<c:url value='/image/healthcare/disease.png'/>">
							<div class="healthText">아픈부위</div>
							<input type="text" name="disease" id="diseaseInput" class="healthInput" value="180">
							<input type="submit" class="healthBt" value="입력">
						</div>
					
				<div class="diseaseList">
					<div class="diseaseDiv">질병</div>
					<div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div><div class="diseaseDiv">질병</div>
				</div>
				-->
				<!--
				
				-->