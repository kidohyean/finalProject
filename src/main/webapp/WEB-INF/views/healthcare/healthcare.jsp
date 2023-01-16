<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>건강알리미</title>
		 <link rel="stylesheet" type="text/css" href="<c:url value='/css/healthcare/healthcare.css'/>">
	</head>
	<body>
		<div id="wrap">
		<form id=insertreserve></form>  
		    <section id="reserve">
		        <article id="reservetext">
                  <div id=text>
                    <div>날짜 적는 법:yyyy-mm-dd</div>
                    <div>시간 적는 법:오전 일때:09:00</div>
                    <div>시간 적는 법:오후 일때:13:00</div>
                    <div>예약내용 적는법 :운동 ,약,병원</div>
                  </div>
 				
		         <div id=position>
		            <input id=date name=date placeholder="날짜"><br>
		            <input id=time name=time placeholder="시간"><br>
		            <input id=reserve1 name=reserve1 placeholder="예약내용"><br>
		            <button id=pushed name=reservation>예약</button>
		        </div>
		        
		        <div id=afterreserve>
		             <div id=afterdate>날짜</div>
		             <div id=aftertime>시간</div>
		             <div id=afterreserve2>예약내용</div>  
		        </div> 
		        </article>
		</section>
		</div>
	</body>
</html>