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
       <a href="/community/list/${num=1}">커뮤니티<strong>커뮤니티</strong></a>
        <p>자유게시판입니다.</p>
    </div>
    
    <div class=contentarticle>
    <form>
      <div class="article_header">
       <div class="title_area">
        <h3 class="title_text">${Aggre.agName}</h3>
       </div>
    <div class="title_id">
    <div class="title_date">
         <img src="<c:url value='/image/user.png'/>" class="userImg">
         <h3 class="text_memid">${Aggre.memId}</h3> 
         <span class="date">${Aggre.agDate }</span>
         <span class="count">조회 ${Aggre.agCount }</span>
   </div>
   </div>
   
        <div class="title-text">
           <div class= "text">
              <p class="agtext">${Aggre.agText}</p>
           </div>
        </div>
   
        <c:if test="${Aggre.memId eq sessionScope.sid }">
         <!--   <div class="update_delete"> -->
           <input type="hidden" value="${Aggre.agNum}" id="deletePageNum">
           <input type="button" value="삭제" id="delete">
           <input type="submit" value="수정" id="update" formaction="/community/${'edit'}/${Aggre.agNum}">
       <!--    </div> -->
        
        </c:if>
   </div>
    </form>
    
    <div>
    <c:forEach var='cvoList' items="${cvoList}">
            <c:if test="${cvoList.cDepth eq '0'}">
                <div id="commentDiv">
                    <p id="commentMemId">${cvoList.memId}</p>
                    <p id="commentContent">${cvoList.cContent}</p>
                    <p id="commentDate">${cvoList.updateDate}</p>
               
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
    
    <div class="thatgle">
    
        <c:if test="${empty sessionScope.sid }">
            <a class="in">로그인 하셔야 댓글작성가능합니다.</a>
        </c:if>
    </div>    
       
        <c:if test="${not empty sessionScope.sid }">
             <form action="/community/insertComment" method="post" id="commentInsertForm">
              <p id="commentInsertTag">댓글:</p>
            <input type="hidden" name="agNum" value="${Aggre.agNum}">
            <input type="text" name="cContent" id="cmText" class="cmText">
            <input type="submit" value="등록" id="cmInsertBt">
           
             </form>
        </c:if>
        
    </div>
    
    
        <div class="btWrap">
    
       
        
       
        <c:if test="${not empty sessionScope.sid }">
            <a href="/community/insertPage" class="on">글쓰기</a>
        </c:if>
</div>
   
   
   </div> 
    
    
    
   </div>   
   
   
     
