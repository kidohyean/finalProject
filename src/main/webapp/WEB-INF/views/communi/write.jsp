<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/detailView.css' />">
<script src="<c:url value='/js/communi/write.js' />"></script>
<script src="<c:url value='/js/communi/edit.js' />"></script>


<div class="board_wrap">
    <div class="board_title">
         <a href="/community/list/${num=1}"><strong>나젊이야기</strong></a>
        <p>자유롭게 사용이 가능한 자유게시판입니다</p>
    </div>
    
    <br><br>
    <div class="content_box">
    <h3>자유게시판</h3>
        <div class="location">
        홈
        <span></span>
        나젊이야기
        <span></span>
        자유게시판
        </div>
    </div>

    <c:if test="${mode eq 'insertPage'}">
        <form class="formBox" id="insertFormBox">
            <div class="board_write_wrap">
                <div class="board_write">
                    <div class="title">
                       <dl>
                           <dt>제목</dt>
                           <dd><input type="text" class="agName" placeholder="제목 입력"></dd>
                       </dl>
                    </div>
                    <div class="info">
                         <dl>
                           <dt>글쓴이</dt>
                           <dd>${sessionScope.sid}</dd>
                       </dl>
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
                         <dl>
                           <dt>제목</dt>
                           <dd><input class="agName" type="text" name="agName" value="${vo.agName}" ></dd>
                       </dl>
                    </div>
                    <div class="info">
                         <dl>
                           <dt>글쓴이</dt>
                           <dd>${vo.memId}</dd>
                       </dl>
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