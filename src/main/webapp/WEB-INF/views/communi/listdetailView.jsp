<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/communi/detailView.css' />">
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
   
   <form method="post">
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
       <tr class="tr-1"><td colspan="2" class="td-2">
        <input type="submit" value="삭제" id="delete" formaction="/community/list">
              <input type="submit" value="수정" id="update" formaction="/community/list">
             </td></tr>
   </table>
   </form>
   </div>     
