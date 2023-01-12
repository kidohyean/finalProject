<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="board_wrap">
    <div class="board_title">
        <strong>커뮤니티</strong>
        <p>자유게시판입니다.</p>
    </div>
    <div id="wrap">
    <section>
    <article id="borad">
       <div id="pageTitle">
           <h2> ${Aggre.agName}</h2>
       </div>
       <div id="contentTable">
          <table id="detailtable">
            <tbody>
               <tr><td class="writer"><span>${Aggre.memId}</span>
            </tbody>
          </table>
       </div>
    </article>
    </section>
   
   
   </div>
</div>