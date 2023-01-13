<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header 코드 입니다.-->
<header>
    <div id ="headerMenuBox">
        <div id="chatBotDiv">
            <img src="<c:url value='/image/chatBot.png'/>" id="chatBot">
        </div>
        <div>
            <img src="<c:url value='/image/logo.png'/>" id="logoImg">
        </div>
        <!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
        <div>
        <c:if test="${empty sessionScope.sid }">
            <a href="<c:url value='/member/loginForm'/>" id="headerMenuA" class="signIn">로그인</a>
            <a href="<c:url value='/member/joinForm'/>" id="headerMenuA" class="signUn">회원가입</a>
            
            
        </c:if>		
                    
        <!-- 로그인 성공 후 보여줄 메뉴 항목 -->
        <c:if test="${not empty sessionScope.sid }">
            <img src="<c:url value='/image/user.png'/>"class="userImg">
            <a id="headerMenuA" class="headerUserId">${sessionScope.sid}님</a>
            <a href="<c:url value='/member/logout'/>" id="headerMenuA" class="logOut">로그아웃</a>
            <a href="<c:url value='/member/myPage'/>" id="headerMenuA" class="myPage">마이페이지</a>
        </c:if>	
        </div>
    </div>
    <c:import url="/WEB-INF/views/headerFooter/topMenu.jsp" />

</header>