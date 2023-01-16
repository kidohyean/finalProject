<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet"  type="text/css" href="/css/chatbot/chatModal.css">
<link rel="stylesheet"  type="text/css" href="/css/chatbot/chatbot.css">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/chatbot/chatbot.js'/>"></script>
<script src="<c:url value='/js/chatbot/chatModal.js'/>"></script>

<!-- Modal -->
<div class="modale" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-header">
        <h2>챗봇</h2>
        <a href="#" class="btn-close closemodale" aria-hidden="true">&times;</a>
      </div>
      <!-- 채팅 답변 출력  -->
			<div id="chatBox"></div>
			
			<form id="chatbotForm">
				<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">
				<input type="submit" value="전송">
			</form>
			
			음성 메시지 : <button id="recordBtn">녹음</button>
			 				  <button id="stopBtn">정지</button>
			 				  
		  <div>
		  	<audio id="audio" preload="auto" controls></audio>
		  </div>
      </div>
    </div>
  </div>
  <!-- /Modal -->
  
    <p><a href="#" class="btn btn-big openmodale">챗봇</a></p>