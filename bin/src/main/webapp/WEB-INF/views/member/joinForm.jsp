
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">


<c:import url="/WEB-INF/views/headerFooter/topLink.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/member/joinForm.css'/>">
<script src="<c:url value='/js/memIdCheck.js'/>"></script>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value='/js/searchZip.js' />"></script>

</head>
<body>


	<!--top.jsp  -->


	<div class="pageSize">
		<c:import url="/WEB-INF/views/headerFooter/header.jsp" />

		<form class="form" id="joinForm" name="joinForm" method="post"
			novalidate action="<c:url value='/member/insert'/>">
			<!--  회원 가입 폼  -->
			<div class="container">
				<h4>회 원 가 입</h4>



				<!-- 왼쪽 -->
				<div class="left">


					<div class="name">
						<h3>이름</h3>
						<input type="text" class="form-control" id="memName"
							name="memName" placeholder="이름을 입력해주세요." required>
					</div>
					<div class="aka">
						<h3>닉네임</h3>
						<input type="text" class="form-control" id="memNickname"
							name="memNickname" placeholder="별명을 입력해주세요." required>
					</div>

					<div class="id">
						<h3>아이디</h3>
						<input type="text" class="form-control" id="memId" name="memId"
							placeholder="아이디을 입력해주세요." value="아이디을 입력해주세요." required>
						<div>
							<input class="button" type="button" id="memIdCheckBtn"
								value="ID 중복 체크">
						</div>
					</div>
					</hr>

					<div class="pwd">
						<h3>비밀번호</h3>
						<input type="password" class="form-control" id="memPw"
							name="memPw" placeholder="비밀번호을 입력해주세요." required>
					</div>


					<div class="email">
						<h3>E-MAIL</h3>
						<input type="email" class="form-control" id="memEmail"
							name="memEmail" placeholder="you@example.com" required>
					</div>


					<div class="phonenumber">
						<h3>핸드폰 번호</h3>
						<input type="text" class="form-control" id="memHp1" name="memHp1"
							placeholder="010 - 0000 - 0000" size="3" required>
					</div>
					<div class="number">
						<label for="memHp2"></label> <input type="text"
							class="form-control" id="memHp2" name="memHp2"
							placeholder="0000  번호을 입력해주세요." size="4" required>
					</div>
					<div class="number">
						<label for="memHp3"></label> <input type="text"
							class="form-control" id="memHp3" name="memHp3"
							placeholder="0000  번호을 입력해주세요." size="4" required>
					</div>

				</div>

				<!-- 오른쪽 -->
				<div class="right">
					<div class="postnumber">
						<h3>주소</h3>
						<input type="text" class="form-control" id="memZipcode"
							name="memZipcode" size="5" placeholder="우편 번호" readonly required>

						<div>
							<input type="button" class="button" id="searchZipBtn"
								name="searchZipBtn" value="우편번호 찾기"><br>
						</div>
					</div>
					<div class="address">
						<label for="memAddress1"></label> <input type="text"
							class="form-control" id="memAddress1" name="memAddress1"
							placeholder=" 주소 입력" size="70" readonly required>

					</div>

					<div class="address">
						<h3>상세주소</h3>
						<input type="text" class="form-control" id="memAddress2"
							name="memAddress2" placeholder="상세주소를 입력해주세요." size="70">
					</div>



					<div class="subscription path">
						<div class="col-md-8 mb-3">
							<h3>가입 경로</h3>
							<select class="custom-select d-block w-100" id="memRoot"
								name="memRoot">
								<option value=""></option>
								<option>검색</option>
								<option>카페</option>
							</select>
							<div class="invalid-feedback">가입 경로를 선택해주세요.</div>
						</div>
					</div>

					<hr class="join">
					<div class="agree-box">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<input type="submit" id="button" class="button" value="가입완료">
					<br> <br> <br>

				</div>

			</div>
			<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
			<!--bottom  -->
			<c:import url="/WEB-INF/views/headerFooter/footer.jsp" />
		</form>
	</div>

</body>

</html>

<!-- 커밋확인! -->