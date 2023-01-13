<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	 <nav class="navbar navbar-expand-custom navbar-mainbg">
        <a class="navbar-brand navbar-logo" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/spm/spmCtg/${1}'/>"><i class="fas fa-tachometer-alt"></i>종합</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value='/spm/spmCtg/${2}'/>"><i class="far fa-address-book"></i>혈관</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/spm/spmCtg/${3}'/>"><i class="far fa-clone"></i>뼈</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/spm/spmCtg/${4}'/>"><i class="far fa-calendar-alt"></i>눈</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/spm/spmCtg/${5}'/>"><i class="far fa-chart-bar"></i>간</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/spm/spmCtg/${6}'/>"><i class="far fa-copy"></i>장</a>
                </li>
            </ul>
        </div>
    </nav>