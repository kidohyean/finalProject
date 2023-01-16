<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index 페이지</title>
<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/exercise/detailRoutineInfo.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/exercise/detailRoutineInfo.js'/>"></script>
</head>
<body>
	<div class="pageSize">
		<!--header.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />
		<!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->

	</div>

	<div id="wrap-routine">
		<div id="wrap-container">
			<div class="routine-box">
				<a id="kaka"
					href="<c:url value='/exercise/detailViewRoutineInfo/${routine.routineNo}'/>"></a>
			</div>
			<div class="routine-info">
				<div class="detail-routine">

					<h2>${routine.routineName}</h2>
					<hr>
					<p>운동정보 : ${routine.routineInfo }</p>
					<p>카테고리 : ${routine.routineCategory }</p>
					<p>주의사항 : ${routine.routineWarn }</p>
					<p>추천 영양제 : ${routine.recSupplements }</p>
				</div>

				<div class="info-box">

					<div class="tab">
						<div class="flex1">
							<a href="#" class="panel1 active">운동방법</a> <a href="#"
								class="panel1">기간별 루틴</a> <a href="#" class="panel1">같이하면 좋은
								운동</a>
						</div>

						<div id="contents1-1" class="content1 on">
							<p>운동방법 : ${routine.useMachine }</p>
							${routine.useVideo}
						</div>
						<div id="contents2-1" class="content1">
							<p>기간별 추천루틴 :</p>
							<p>1주차 : ${routine.routineDate1 }</p>
							<p>2주차 : ${routine.routineDate2 }</p>
							<p>3주차 : ${routine.routineDate3 }</p>
							<p>4주차 : ${routine.routineDate4 }</p>
							<p>이후는 본인이 가능한 만큼만 횟수를 천천히 늘려가며 진행해주세요</p>
						</div>
						<div id="contents3-1" class="content1">
							<form>
								<input type="submit" id="recExercise1" class="routineBtn"
									value="#${routine.recExercise1}"
									formaction="/exercise/detailViewRoutineInfo/1"> <input
									type="submit" id="recExercise1-1" class="routineBtn"
									value="#${routine.recExercise2}"
									formaction="/exercise/detailViewRoutineInfo/2"> <input
									type="submit" id="recExercise1-2" class="routineBtn"
									value="#${routine.recExercise3}"
									formaction="/exercise/detailViewRoutineInfo/3">

							</form>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>


	<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
</body>
</html>