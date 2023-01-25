<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>마이페이지/개인정보변경</title>
<!--   <base href=""> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/member/myPage.css'/>">
<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value='/js/searchZip.js' />"></script>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/modify.js' />"></script>
</head>
<body>
	<div class="pageSize">
		<!-- 헤더 -->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />

		<form class="form" id="modifyForm" name="modifyForm" method="post"
			novalidate action="<c:url value='/modify'/>">


			<!-- 마이페이지 메뉴 -->
			<nav class="myPage-nav">
				<div class="myPage-nav-container">
					<img src="<c:url value='/image/user.png'/>" class="myPage-userImg">
					<div class="myPage-Inf">이름 나이</div>

					<div class="button-box">
						<input class="myPage-button" type="button" value="나의 개인정보">
						<input class="myPage-button" type="button"
							onClick="location.href='<c:url value='myPagehealth'/>'"
							value="건강알리미"> <input class="myPage-button" type="button"
							value="---"> <input class="myPage-button" type="button"
							value="---">
					</div>
				</div>

			</nav>

			<!-- 나의 개인 정보 -->
			<section class="myPage-main">
				<div class="myPage-main-container">
					<div class="myPage-main-container-header">
						<h3>나의 개인정보</h3>
					</div>
				</div>

				<div class="left_container">
					<div class="container">

						<div class="user_label">회원 이름</div>
						<input type="text" class="user_box" name="memName"
							value="${info.memName }">

					</div>


					<div class="container">
						<div class="user_label">회원 아이디</div>
						<input type="text" class="user_box" name="memId"
							value="${info.memId }" readonly="readonly">
					</div>

				

					<div class="container">
						<div class="user_label">회원 닉네임</div>
						<input type="text" class="user_box" name="memNickname"
							value="${info.memNickname }">
					</div>

				</div>

				<div class="right_container">

					<div class="container">
						<div class="user_label">회원 전화번호</div>
						<input type="text" class="user_box" name="memHp"
							value="${info.memHp }">
					</div>




					<div class="container">
						<div class="user_label">우편번호</div>
						<input type="text" class="user_box" name="memZipcode"
							value="${info.memZipcode }">

						<div>
							<input type="button" class="button" id="searchZipBtn"
								name="searchZipBtn" value="우편번호 찾기"><br>
						</div>
					</div>
					<div class="container">
						<div class="user_label">주소 입력</div>
						<input type="text" class="user_box" name="memAddress1"
							value="${info.memAddress1 }">

					</div>

					<div class="container">
						<div class="user_label">상세주소</div>
						<input type="text" class="user_box" name="memAddress2"
							value="${info.memAddress2 }">
					</div>
					
					<input type="submit" id="button" class="btn btn-info updateBtn" value="수정완료">
					<input type="submit" id="button" class="btn btn-danger deleteBtn" value="회원 탈퇴">
			
						type="hidden" name="memId" value="${member.memId }">
				</div>
				




			</section>
		</form>
		<div class="pwDiv">
			<form id="pwCheckForm" style="visibility: hidden;">
				비밀번호 확인 : <input type="password" name="pwCheck" id="pwCheck" class="pwCheck">
				<input type="submit" id="pwChBt" class="pwChBt" value="비밀번호확인">
			</form>
			<div id="testDiv" style="visibility: hidden;">
				비밀번호 맞음
			</div>
		</div>
		
		<input type="button" id="bt" class="btn btn-warning modifyBtn" value="정보수정">
		<input type="button" id="btc" class="btn btn-warning modifyBtn" value="수정취소">
	</div>




	<!-- footer -->
	

</body>

<footer>
<div class="pageSize">
	<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
	
</div>
</footer>