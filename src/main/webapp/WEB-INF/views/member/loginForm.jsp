<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 구글 폰트 -->
	
	
	
	
	<title>로그인</title>
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<script src="<c:url value='/js/login.js'/>"></script>
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	   rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/login.css'/>">
	
	



</head>

<body>
   <div class="pageSize">
      <form id="loginForm" name="loginForm">

         <div class="left">
            <div class="form">
               <div class="container">
                  <div class="label-login"></div>

                  <div class="image-left">
                     <div class="image-L"></div>
                  </div>
                  <div class="image-right">
                     <div class="image-R"></div>
                  </div>

                  <div class="login-form">
                     <label class="label">아이디<br />
                     <input type="text" id="id" name="id" class="input"></label> <label
                        class="label">비밀번호<br />
                     <input type="password" id="pwd" name="pwd" class="input"></label>
                     <div class="group">
                        <label><input type="checkbox" name="check"
                           value="memory"> 아이디 저장</label>
                     </div>
                  </div>

                  <div class="hr"></div>

                  <div class="group1">
                     <input type="button" id="loginButton" value="로그인" class="button">
                  </div>

               </div>
            </div>



         </div>

         <div class="right">
            <div class="right-form">
               <div class="right-image"></div>
            </div>
         </div>
      </form>
   </div>







</body>

</html>