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
						<input class="myPage-button" type="button" onClick="location.href='<c:url value='myPagehealth'/>'" value="건강알리미"> <input
							class="myPage-button" type="button" value="---"> <input
							class="myPage-button" type="button" value="---">
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
					<div class ="container">
					<div class="form-label mt-4" style="user-select: auto;">
					<label class ="form-label mt-4" style="user-select:auto;">회원 이름</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memName"
					value="${info.memName }">
					</div>
					</div>
					
					
					<div class="form-label mt-4" style="user-select: auto;">
					<label class ="form-label mt-4" style="user-select:auto;">회원 아이디</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memId"
					value="${info.memId }" readonly="readonly">
					</div>
					
					<div class="form-group" style="user-select: auto;">
					<label class ="form-label mt-4" style="user-select:auto;">회원 비밀번호</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memPw"
					value="${info.memPw }">
					</div>
					
					<div class="form-group" style="user-select: auto;">
					<label class ="form-label mt-4" style="user-select:auto;">회원 닉네임</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memNickname"
					value="${info.memNickname }">
					</div>
					
					<div class="form-group" style="user-select: auto;">
					<label class ="form-label mt-4" style="user-select:auto;">회원 전화번호</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memHp"
					value="${info.memHp }">
					</div>
					
		
					
					
					<div class="form-group" style="user-select: auto;">
						<label class ="form-label mt-4" style="user-select:auto;">우편번호</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memZipcode"
					value="${info.memZipcode }">

						<div>
							<input type="button" class="button" id="searchZipBtn"
								name="searchZipBtn" value="우편번호 찾기"><br>
						</div>
					</div>
					<div class="form-group" style="user-select: auto;">
						<label class ="form-label mt-4" style="user-select:auto;">주소 입력</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memAddress1"
					value="${info.memAddress1 }">

					</div>

					<div class="form-group" style="user-select: auto;">
						<label class ="form-label mt-4" style="user-select:auto;">상세주소</label> 
					<input type="text" class="form-control inputName updateMember" style="user-select:auto;" name="memAddress2"
					value="${info.memAddress2 }">
					</div>
					
					
					<br>
					
					<div class="container text-center" style="margin-top: 40px">
						<input type="button" value="정보 수정" class="btn btn-warning modifyBtn">
						<input type="button" value="회원 탈퇴" class="btn btn-danger deleteBtn">
						<input type="button" value="수정 완료" class="btn btn-info updateBtn">
						
					</div>
					<input type ="hidden" name="memId" value="${member.memId }">
					
				
					
					</section>
					</form> 
        			</div>
        			
      
    

		<!-- footer -->
		<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />

	
</body>
