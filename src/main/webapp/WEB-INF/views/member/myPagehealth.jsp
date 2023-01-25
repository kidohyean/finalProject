<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강알리미</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/member/myPagehealth.css'/>">
<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
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
						<input class="myPage-button" type="button"
							onClick="location.href='<c:url value='myPage'/>'" value="개인정보변경">
						<input class="myPage-button" type="button"
							onClick="location.href='<c:url value='myPagehealth'/>'"
							value="건강알리미"> <input class="myPage-button" type="button"
							value="---"> <input class="myPage-button" type="button"
							value="---">
					</div>
				</div>
			</nav>

			<!-- 개인정보 변경 -->
			<section class="myPage-main">
				<div class="myPage-main-contain">
					<div class="myPage-main-contain-header">
						<h3>건강알리미</h3>
					</div>
					<div class="container">
						<div class="health_text">
							<small>키</small> <input type="text" class="health_box"
								id="txtName" value="" placeholder="키 입력">
						</div>
						<div class="health_text">
							<small>몸무게</small> <input type="text" class="health_box"
								style="margin-right: 20px" id="txtName" value=""
								placeholder="몸무게 입력">
						</div>
						<div class="health_text">
							<small>혈당</small> <input type="text" class="health_box"
								style="margin-right: 10px" id="txtName" value=""
								placeholder="혈당 입력">
						</div>
						<div class="health_text">
							<small>체지방량</small> <input type="text" class="health_box"
								style="margin-right: 35px" id="txtName" value=""
								placeholder="체지방량 입력">
						</div>
						<div class="health_text">
							<small>혈압</small> <input type="text" class="health_box"
								style="margin-right: 10px" id="txtName" value=""
								placeholder="혈압 입력">
						</div>
						<div class="health_text">
							<small>질병</small> <input type="text" class="health_box"
								style="margin-right: 10px" id="txtName" value=""
								placeholder="질병 입력">
						</div>

						<input type="submit" id="button" class="button_end"
							value="건강알리미 수정완료">
					</div>
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
</html>