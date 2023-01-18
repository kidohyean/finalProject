<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="tab">
        <div class="flex">
        	<a class="panel active" href="<c:url value='/spm/spmCtg/${1}'/>">공통 & 필수</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${2}'/>">심혈관계</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${3}'/>">뼈, 관절</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${4}'/>">눈 & 시력</a>
            <a class="panel" href="<c:url value='/spm/spmCtg/${5}'/>">간</a>
            <a href="<c:url value='/spm/spmCtg/${6}'/>" class="panel">소화기관</a>
        </div>
    </div>
