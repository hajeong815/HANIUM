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
		<%@include file="../allNav.jsp" %>
	</div>
	
		<div class="container">
			<header>
				<h1> 디지털자산 등록/조회</h1>
			</header>
			<hr />
			 


<!-- 검색창 -->
		<div class="jumbotron">

					<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">디지털자산 코드</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					    <span class="input-group-addon" id="basic-addon1">디지털자산 구분</span>
					  <div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">안전기능 수행</a></li>
					    <li><a href="#">보안기능 수행</a></li>
					    <li><a href="#">비상대응기능 수행</a></li>
					  </ul>
					</div>
					<span class="input-group-addon" id="basic-addon1">기능유형</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">안전기능 수행</a></li>
					    <li><a href="#">보안기능 수행</a></li>
					    <li><a href="#">비상대응기능 수행</a></li>
					  </ul>
					</div>
					</div>


		<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">디지털자산 명</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					  
 
					    <span class="input-group-addon" id="basic-addon1">필수 디지털자산 유형</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">필수시스템</a></li>
					    <li><a href="#">non-필수시스템</a></li>
					  </ul>
					</div>
					
					<span class="input-group-addon" id="basic-addon1">디지털 여부</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">디지털</a></li>
					    <li><a href="#">아날로그</a></li>
					  </ul>
					</div>
					
					
		</div>

      	</div>
            		
          		

			
			<hr />
			
			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<tr>
						<th>디지털자산 코드</th><th>디지털자산명</th><th>디지털자산 구분</th><th>디지털자산 기능 유형</th>
						<th>디지털 여부</th><th>필수디지털자산 유형</th>
						
						</tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
							</tr>
						</c:forEach>
						
					</table>
				</form>
			</section>
			
			<!-- 페이지 -->
			<nav>
  				<ul class="pagination" >
    				<li>
      				<a href="#" aria-label="Previous">
        			<span aria-hidden="true">&laquo;</span>
      				</a>
    				</li>
    					<li><a href="#">1</a></li>
    					<li><a href="#">2</a></li>
    					<li><a href="#">3</a></li>
    					<li><a href="#">4</a></li>
    					<li><a href="#">5</a></li>
    					<li>
      						<a href="#" aria-label="Next">
        						<span aria-hidden="true">&raquo;</span>
      						</a>
    					</li>
    					
    				
  				</ul>
  				
  				<!-- 등록버튼(모달창) -->
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="float: right;">
				  디지털자산 등록
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">디지털자산 등록</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <%@include file="DAClassify.jsp" %>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				        <button type="button" class="btn btn-primary">등록</button>
				      </div>
				    </div>
				  </div>
				</div>	
  				

			</nav>		

			
			

			

			
			<hr />
		</div>
	</body>
</html>