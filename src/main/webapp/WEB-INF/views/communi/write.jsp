<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/detailView.css' />">
<script src="<c:url value='/js/communi/write.js' />"></script>
<script src="<c:url value='/js/communi/edit.js' />"></script>

<div class="board_wrap">
    <div class="board_title">
         <a href="/community/list/${num=1}"><strong>커뮤니티</strong></a>
        <p>자유게시판입니다.</p>
    </div>

    <c:if test="${mode eq 'insertPage'}">
        <form class="formBox" id="insertFormBox">
            <div class="board_write_wrap">
                <div class="board_write">
                    <div class="title">
                        <p>제목</p>
                        <input class="agName" type="text" name="agName" placeholder="제목 입력">
                    </div>
                    <div class="info">
                        <p>글쓴이</p>
                        <p class="agMemId">${sessionScope.sid}</p>
                    </div>
                    <div class="agTextBox">
                        <textarea class="agText" placeholder="내용 입력"></textarea>
                    </div>
                </div>
                <div class="agBtInsert">
                    <input class="agInsertBt" type="submit" value="저장">
                    <a class="agCancel" href="/community/list/${num=1}">취소</a>
                </div>
            </div>
         </form>                
   </c:if>

    <c:if test="${mode eq 'edit'}">
        <div class="board_write_wrap">
            <form class="formBox" id="updateFormBox">
                <div class="board_write">
                        <input class="agNum" type="hidden" name="agNum" value="${agNum}">
                    <div class="title">
                        <p>제목</p>
                        <input class="agName" type="text" name="agName" value="${vo.agName}">
                    </div>
                    <div class="info">
                        <p>글쓴이</p>
                        <p class="agMemId">${vo.memId}</p>
                    </div>
                    <div class="agTextBox">
                        <textarea class="agText">${vo.agText}</textarea>
                    </div>
                </div>
                <div class="agBtInsert">
                    <input class="agUpdateBt" type="submit" value="수정완료">
                    <a class="agCancel" href="/community/list/${num=1}">취소</a>
                </div>
            </form>                 
        </div>
   </c:if>
</div>