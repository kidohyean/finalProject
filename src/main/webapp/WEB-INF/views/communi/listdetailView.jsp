@@ -1,20 +1,20 @@
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="board_wrap">
    <div class="board_title">
        <strong>커뮤니티</strong>
        <p>자유게시판입니다.</p>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            <div class="title">
                ${comList.agName}
            </div>
            <div class="info">
                <dl>
                    <dt>${comList.num}</dt>
                    <dd>1</dd>
                </dl>
                <dl>
                    <dt>글쓴이</dt>
                    <dd>김이름</dd>
                </dl>
                <dl>
                    <dt>작성일</dt>
                    <dd>2021.1.16</dd>
                </dl>
                <dl>
                    <dt>조회</dt>
                    <dd>33</dd>
                </dl>
            </div>
            <div class="cont">
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다<br>
                글 내용이 들어갑니다
            </div>
        </div>
        <div class="bt_wrap">
            <a href="list.html" class="on">목록</a>
            <a href="edit.html">수정</a>
        </div>
    </div>
</div>