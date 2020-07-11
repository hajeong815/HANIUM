<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

		<!-- bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	
	<title>국가기반시설 정보보안 관리체계</title>
</head>
<body>
	<div>
		<%@include file="allNav.jsp" %>
	</div>
<div class="jumbotron">
      <div class="container">
        <h1>HANIUM</h1>
        <p>한이음 멘토링 프로젝트_[20_HF089]국가기반시설 정보보안 관리체계 프로그램 웹서비스입니다.</p>
        <p><a class="btn btn-primary btn-lg" href="https://lab.hanium.or.kr/20_hf089/main" role="button">GitLab »</a></p>
      </div>
    </div>
    
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h2>프로젝트 소개</h2>
          <p style="line-height:200%">
          - 국가기반시설 내 필수시스템 및 필수디지털자산을 식별하는 알고리즘(NRC RG 5.71, KINAC/RS-015 참조)을
          	<br>기반으로 정보보안 대상 식별 및 유형 분류, 
          	<br>분류된 필수디지털자산에 맞는 기술적 보안 조치 방법을 정의하고, 식별 알고리즘과 보안 조치 방법을 포함하는 
          	<br>정보보안 관리체계(ISMS) 프로그램
          </p>
<!--           <p><a class="btn btn-default" href="#" role="button">View details »</a></p> -->
        </div>
        
        
        <div class="col-md-4">
          <h2>주요 기능</h2>
          <p style="line-height:200%">1. 필수시스템 관리
          		<br>2. 필수디지털자산 관리
          		<br>3. 필수시스템 식별 및 분류
          		<br>4. 필수디지털자산 식별 및 분류
          		<br>5. 기술적 보안조치
          		<br>6. 보안성 평가
          </p>
       </div>
        <div class="col-md-4">
          <h2>적용 기술</h2>
          <p style="line-height:200%">
          		<b>규제 가이드라인</b>
 				<br> - 미국 원자력규제위원회(NRC) RG 5.71, 미국 Nuclear Energy Institute 13-10 
  				<br> - 한국 원자력통제기술원(KINAC) RS-015, 정보통신 기반시설 취약점 분석/평가 점검 항목
				<br><b>개발언어 :</b> 
				<br>JAVA, JSP, HTML, Javascript          
          </p>
        </div>
      </div>

      <hr>

      <footer>
        <p>한이음 멘토링 2020</p>
      </footer>
    </div>
    
</body>
</html>
