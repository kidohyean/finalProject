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
<script src="<c:url value='/js/login.js'/>"></script>
<script src="<c:url value='/js/memIdCheck.js'/>"></script>
</head>

<body>
	<div class="pageSize">
		<!-- 헤더 -->
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />




		<!-- 마이페이지 메뉴 -->
			<nav class="myPage-nav">
				<div class="myPage-nav-container">
					<img src="<c:url value='/image/user.png'/>" class="myPage-userImg">
					<div class="myPage-Inf">마이페이지</div>

					<div class="button-box">
						<input class="myPage-button" type="button" value="나의 개인정보"onClick="location.href='<c:url value='myPage'/>'">
						<input class="myPage-button" type="button" value="비밀번호 변경"onClick="location.href='<c:url value='memPw'/>'">
						<input class="myPage-button" type="button" value="나의 찜목록"> 
					</div>
			</div>

		</nav>

		<!-- 나의 개인 정보 -->
		<section class="myPage-main">
			<div class="myPage-main-container">
				<div class="myPage-main-container-header">
					<h3>비밀번호 변경</h3>
					<hr>
					<form method="post" action="<c:url value='/member/memPw'/>">

						<div class="left_container">
							<div class="container">

								<div class="user_label">현재 비밀번호</div>
								<input class="user_box" id=memPw type=password name="memPw" 
								data-sb-balidations="required">
									
								<div class="user_label">새 비밀번호</div>
								<input class="user_box" id=memPw type=password name="newmemPw" 
								data-sb-balidations="required">
									
								<div class="user_label">새 비밀번호 확인</div>
								<input class="user_box" id=memPw type=password name="newmemPwConfirm" 
								data-sb-balidations="required">
									
									
									
								

							</div>


							
								<td colspan="2"><input type="submit" value="비밀번호 변경하기" class="button2">
									
							</div>
					</form>

				</div>
			</div>
	



	</section>

	

	</div>









	<!-- footer -->


</body>

<footer>
	<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />

	</div>
</footer>