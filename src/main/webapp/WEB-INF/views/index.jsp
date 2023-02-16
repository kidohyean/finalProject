<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>index 페이지</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/index.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/index.js'/>"></script>

<!-- 카카오 지도 스타일 -->
<c:import url="/WEB-INF/views/chatbot/chatModal.jsp" />

</head>
<body>



	<div class="image1">
		<div class="main_text">나도 젊어 봤다</div>
		<div class="sub_text">오늘보다 더 나은 내일을 위해</div>



		<!-- 로그인 전 -->
		<c:if test="${empty sessionScope.sid }">
			<div class="member_button">
				<input type="button" class="button"
					onClick="location.href='<c:url value='/member/joinForm'/>'"
					value="회원가입"> <input type="button" class="button"
					onClick="location.href='<c:url value='/member/loginForm'/>'"
					value="로그인">
			</div>
		</c:if>

		<!-- 로그인 후 -->
		<c:if test="${not empty sessionScope.sid }">
			<div class="user_logIn_img">
				<img src="<c:url value='/image/user.png'/>" class="userImg">
			</div>

			<div class="user_logIn_name">
				<a id="headerMenuA" class="headerUserId">${sessionScope.sid}님</a>
			</div>

			<div class="user_logIn_button">
				<input type="button" class="button"
					onClick="location.href='<c:url value='/member/myPage'/>'"
					value="마이페이지"> <input type="button" class="button"
					onClick="location.href='<c:url value='/member/logout'/>'"
					value="로그아웃">
			</div>





		</c:if>

		<div class="text">아래로 스크롤 해주세요!</div>
		<div id="chatBotDiv">
			<a data-toggle="modal" data-target="#modal" role="button"
				class="btn btn-big openmodale"><img
				src="<c:url value='/image/chatBot.png'/>" id="chatBot"></a>
		</div>
	</div>

	<div class="menu">
		<div class="menu_text">Contents</div>

		<div class="right_menu_box">

			<div class="button_box_top">
				<input type="button" class="box1" value="운동"
					onClick="location.href='<c:url value='/exercise/exerciseInfo'/>'">
				<input type="button" class="box2" value="영양제"
					onClick="location.href='<c:url value='/spm/listSupplement'/>'">
			</div>

			<div class="button_box_bottom">
				<input type="button" class="box3" value="건강 알리미"
					onClick="location.href='<c:url value='/community/healthcare'/>'">
				<input type="button" class="box4" value="커뮤니티"
					onClick="location.href='<c:url value='/community/list/${num=1}'/>'">

			</div>

			<!-- 
			<div class="right_menu_box_top">
				
			</div>
			<div class="right_menu_box_bottom">
			
				</div>-->
		</div>
	</div>

	<div class="image2"></div>
	<div class="map_api">지도 API 넣을 예정</div>






	<div class="image3">
		<div class="footer_box">
			주소 : 서울 특별시 서초구</br> 대표자 : 박정훈</br> 전화번호 : 02-000-0000</br> COPYRIGHT © 2023 나도
			젊어봤다. ALL RIGHTS RESERVED. CREATED BY 이조판서</br>
		</div>
	</div>








	<!--footer.jsp 에서 html가지고 오는 코드 자세한 내용은 headerFooter 파일에서-->



</body>



</html>