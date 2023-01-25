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
</head>
<body>
	<div class="pageSize">
		<!-- 헤더 -->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />

		<form>

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
						<div class="user_label">회원 비밀번호</div>
						<input type="text" class="user_box" name="memPw"
							value="${info.memPw }">
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

					<input type="button" value="정보 수정" class="button_1"> <input
						type="button" value="회원 탈퇴" class="button_1"> <input
						type="button" value="수정 완료" class="button_1"> <input
						type="hidden" name="memId" value="${member.memId }">
				</div>
				




			</section>
		</form>
	</div>




	<!-- footer -->
	

</body>

<footer>
<div class="pageSize">
	<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
	
</div>
</footer>