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




		<!-- 마이페이지 메뉴 -->
			<nav class="myPage-nav">
				<div class="myPage-nav-container">
					<img src="<c:url value='/image/user.png'/>" class="myPage-userImg">
					<div class="myPage-Inf">마이페이지</div>
						
						<div class="button-box">
						<input class="myPage-button" type="button" value="나의 개인정보"onClick="location.href='<c:url value='myPage'/>'">
						<input class="myPage-button" type="button" value="비밀번호 변경"onClick="location.href='<c:url value='passWordForm'/>'">
						<input class="myPage-button" type="button" value="나의 찜목록" onClick="location.href='<c:url value='likes'/>'">
					</div>
			</div>

		</nav>
	</div>

<form id="form-change-password" class="border bg-light p-3" method="post" action="password">
	<div class="mb-3">
		<label class="form-label">이전 비밀번호</label>
		<input type="password" class="form-control" name="oldPassword">
	</div>
	
	<div class="mb-3">
		<label class="form-label">새 비밀번호</label>
		<input type="password" class="form-control" id="password" name="Password">
	</div>
	
	<div class="mb-3">
		<label class="form-label">새 비밀번호 재입력</label>
		<input type="password" class="form-control" name="passwordConfirm">
	</div>
		
		
	<button type="submit" onclick="fn_submit(); return false;">적용</button>
	<button type="button" onclick="self.close();">닫기</button>
</form>

<script type="text/javascript">
$(function(){
	$("#form-change-password").submit(function){
		let oldPassword = $(":password[name=oldPassword]").val();
		let password =$("#password").val();
		let passwordConfirm=$("#password-confirm").val();
		
		if(oldPassword ==""){
			alert("이전 비밀번호는 필수 입력값입니다.");
			return false;
		}
		
		if(password == ""){
			alert("새 비밀번호는 필수 입력값입니다.");
			return false;
		}
		if(passwordConfirm ==""){
			alert("비밀번호 확인은 필수 입력값입니다.");
			return false;
		}
		if(oldPassword == password){
			alert("새 비밀번호를 이전 비밀번호와 같은 값으로 지정할 수 없습니다.");
			return false;
		}
		if(password !=passwordConfirm){
			alert("새 비밀번호와 비밀번호 값이 일치하지 않습니다.");
			return false;
		}
		return true;
	})
})
	

</script>

</body>
</html>