<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  function chk_form() {
  
  document.getElementById('frm').submit();
  }
  </script>

<nav class="topMenu">
    <ul>
      <li class="one"><a href="/exercise/exerciseInfo">운동</a></li><!--
   --><li class="two"><a href="/spm/spmMenu">영양제</a></li><!--
   --><li class="three"><a href="/community/healthcare">건강알리미</a></li><!--
   --><li class="four"><a href="/community/list/${num=1}">커뮤니티</a>
      </li>
      <hr id="topMenuHr" />
    </ul>
  </nav>