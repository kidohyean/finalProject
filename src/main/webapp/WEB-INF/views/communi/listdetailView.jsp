<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/detailView.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/comment.css' />">
<script src="<c:url value='/js/communi/delete.js' />"></script>
<script src="<c:url value='/js/communi/comment.js' />"></script>
<script type="text/javascript">
document.addEventListener('keydown', function(event){
	  if(event.keyCode ===13) {
	    event.preventDefault();
	  }
	}, true);
	

</script>
<div class="board_wrap">
    <div class="board_title">
        <strong>커뮤니티</strong>
        <p>자유게시판입니다.</p>
    </div>
    <form>
        <table border="1">
            <tr>
                <th>제목</th>
                <td>${Aggre.agName}</td>
            </tr>
            <tr>
                <th>글쓴이</th>
                <td>${Aggre.memId}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td class="td-1">${Aggre.agText}</td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>${Aggre.agDate }</td>
            </tr>
            
            <c:if test="${Aggre.memId eq sessionScope.sid }">
                <tr class="tr-1">
                    <td colspan="2" class="td-2">
                        <input type="hidden" value="${Aggre.agNum}" id="deletePageNum" >
                        <input type="button" value="삭제" id="delete">
                        <input type="submit" value="수정" id="update" formaction="/community/${'edit'}/${Aggre.agNum}">
                    </td>
                </tr>
            </c:if>
        </table>
    </form>
    <div>
        <form action="/community/insertComment" method="post" id="commentInsertForm">
            <p id="commentInsertTag">댓글:</p>
            <input type="hidden" name="agNum" value="${Aggre.agNum}">
            <input type="text" name="cContent" id="cmText" class="cmText">
            <input type="submit" id="cmInsertBt">
        </form>
        <c:forEach var='cvoList' items="${cvoList}">
            <c:if test="${cvoList.cDepth eq '0'}">
                <div id="commentDiv">
                    <p id="commentMemId">${cvoList.memId}</p>
                    <p>${cvoList.updateDate}</p>
                    <p>${cvoList.cContent}</p>
                    <div>
                        
                        <c:if test="${not empty sessionScope.sid }">
                            
                                <c:if test="${Aggre.memId eq sessionScope.sid }">
                                    <button>수정</button>
                                </c:if>
                                <input type="hidden" name="agNum" value="${Aggre.agNum}">
                                <input type="hidden" name="cId" value="${cvoList.cId}">
                                <button id="${cvoList.cId}" class="replyHiddenBt" >답글</button>
                            <form method="post" id="'c' +${cvoList.cId}" class="replyCommentForm">
                                <input id="'c' + ${cvoList.cId}" class="replyText" type="text" name="replyCmt">
                                <input id="'c' + ${cvoList.cId}" class="replyBt" type="submit" value="답글" formaction="/community/replyComment">
                            </form>
                        </c:if>
                        
                    </div>
                </div>
            </c:if>
            <c:if test="${cvoList.cDepth eq '1'}">
                <div>
                    <p>${cvoList.memId}</p>
                    <p>${cvoList.updateDate}</p>
                    <p>${cvoList.cContent}</p>
                </div>
            </c:if>
            
        </c:forEach>
    </div>
    
   </div>     
