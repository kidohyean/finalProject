<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
    $(document).ready(function(){
    console.log("start");
    $(".boardList").on('click',function(){
        /*  var dtNum = $(this)[0].firstChild.nextElementSibling.innerHTML;  */
         var dtNum = $(this).find('input[class="num1"]').val(); 
        location.href="/community/detailViewAggre/"+dtNum;
    })
})
</script>

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
    
<div class="head3">
    <select id="selectBox" name="selectBox" onchange="if(this.value) location.href=(this.value);">
        <option value="/community/list/1" <c:if test="${listPage eq 'list'}">selected</c:if> id="allList">전체글</option>
        <!--
            <c:if test="${empty sessionScope.sid }">
                로그인 안했을때 비움
            </c:if>
        -->
       
        <c:if test="${not empty sessionScope.sid }">
            <option value="/community/myList/1" <c:if test="${listPage eq 'myList'}">selected</c:if> id="myList">내가쓴글</option>
        </c:if>
      </select>
     
  </div>
  
<div class="boardListWrap">
    <div class="boardLists">
        <div class="top">
            <div id="topList" class="num">번호</div>
            <div id="topList" class="title1">제목</div>
            <div id="topList"class="writer">글쓴이</div>
            <div id="topList" class="date">작성일</div>
            <div id="topList" class="count">조회</div>
        </div>
        <c:forEach var='comList' items="${comList}">
           <c:set var="i" value="${i+1}"/>
            <div class="boardList">
                <div id="listItem" class="num">${i + page.displayPost}</div>
                <input type="hidden" class="num1" value="${comList.agNum}">
                <div id="listItem" class="title1">${comList.agName}</div>
                <div id="listItem" class="writer">${comList.memId}</div>
                <div id="listItem" class="date">${comList.agDate}</div>
                <div id="listItem" class="count">${comList.agCount}</div>
            </div>
        </c:forEach>
        
        <div class="btWrap">
    
        <c:if test="${empty sessionScope.sid }">
            <a href="<c:url value='/member/loginForm'/>" class="on">로그인시 글작성 가능합니다.</a>
        </c:if>
        
       
        <c:if test="${not empty sessionScope.sid }">
            <a href="/community/insertPage" class="on">글쓰기</a>
        </c:if>
</div>
        
        <div class="boardPage">
            <c:if test="${page.prev}">
                <a href="/community/${listPage}/1" class="btPrev"><<</a>
            </c:if>
            <c:if test="${page.prev}">
                <a href="/community/${listPage}/${page.startPageNum - 1}" class="btPrev"><</a>
            </c:if>

            <c:forEach var ="num" begin="${page.startPageNum}" end = "${page.endPageNum}">
                <c:if test="${select != num}">
                    <a href="/community/${listPage}/${num}">${num}</a>
                </c:if>

                <c:if test="${select == num}">
                    <b>${num}</b>
                </c:if>

            </c:forEach>
            <c:if test="${page.next}">
                <a href="/community/${listPage}/${page.endPageNum + 1}" class="btNext">></a>
            </c:if>
            <c:if test="${page.next}">
                <a href="/community/${listPage}/${page.pageNum}" class="btNext">>></a>
            </c:if>

        </div>
    </div>      
    
            <div id="wrap1">
                <form id="listSearchFrm" action="/community/Searchlist/1">
                <select id="type" name="type">
						<option value="agName">제목</option>
						<option value="memId">글쓴이</option>
					</select>
				 <input type="text" name="keyword" class="input-search-word" placeholder="검색어 입력">
		            <input type="submit" class="header-item" value="검색">
				</form>
			</div>	
        
</div>			
				
				
</div>