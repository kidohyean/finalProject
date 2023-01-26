<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        
<link rel="stylesheet"  type="text/css" href="/css/chatbot/chatbot.css">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/chatbot/chatbot.js'/>"></script>
    </head>
    <body>
        
  <!-- 채팅 답변 출력  -->
  <div id="chatBox"></div>
			
  <form id="chatbotForm">
      <input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">
      <input type="submit" value="전송" id="chatInput">
  </form>
  
    <div id="boiceMS">음성 메시지 : </div>
    <button id="recordBtn">녹음</button>
    <button id="stopBtn">정지</button>
                     
 <div>
    <audio id="audio" preload="auto" controls></audio>
 </div>
    </body>
</html>

