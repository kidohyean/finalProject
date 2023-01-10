<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
    $(function(){ //아이디가 btnWrite인 버튼을 누르게 되면 write.do 컨트롤러로 맵핑
        $(".on").click(function(){
            location.href="cummuni/insert";
        });
    });
     
    function list(page){ //현재 페이지의 조건을 넘겨준다. +뒤에있는 것들은 검색 
        location.href="${path}/board/list.do?curPage="+page
            +"$search_option=${map.search_option}"
            +"$keyword=${map.keyword}";
    }
     
    </script>
<div class="board_wrap">
<div class="board_title">
    <strong>커뮤니티</strong>
    <p>자유게시판입니다.</p>
</div>
<div class="btWrap">
    <form method="post" action="/communityController">
        <input type="hidden" name="pageType" value="inserte">
        <input href="submit" class="on" value="등록">
    </form>
    
</div>
<div class="boardListWrap">
    <div class="boardLists">
        <div class="top">
            <div id="topList" class="num">번호</div>
            <div id="topList" class="title">제목</div>
            <div id="topList"class="writer">글쓴이</div>
            <div id="topList" class="date">작성일</div>
            <div id="topList" class="count">조회</div>
        </div>
        <c:forEach var='comList' items="${comList}">
            <div class="boardList">
                <div id="listItem" class="num">${comList.num}</div>
                <div id="listItem" class="title"><a href="">${comList.agName}</a></div>
                <div id="listItem" class="writer">${comList.memId}</div>
                <div id="listItem" class="date">${comList.agDate}</div>
                <div id="listItem" class="count">${comList.agCount}</div>
            </div>
        </c:forEach>
        <div class="boardPage">
            <c:if test="${listMap.pager.curBlock > 1}">
                <a href="#" onclick="list('1')" class="btFirst"><<</a>
            </c:if>
            <c:if test="${listMap.pager.curBlock > 1}">
                <a href="#" onclick="list('${listMap.pager.prevPage}')" class="btPrev"><</a>
            </c:if>
            

            <c:forEach var ="num" begin="1" end = "${listMap.pager.totPage}">
                <a href="javascript : list ('${num}')">${num}</a>
            </c:forEach>
            <c:if test="${map.pager.curBlock <= map.pager.totBlock}">
                <a href="#" onclick="list('${listMap.pager.nextpage}')" class="btNext">></a>
            </c:if>
            <c:if test="${map.pager.curBlock <= map.pager.totBlock}">
                <a href="#" onclick="list('${listMap.pager.totPage}')" class="btLast">>></a>
            </c:if>
            
        </div>
    </div>
    
    
</div>
</div>