<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	<title>국가기반시설 정보보안 관리체계</title>
	 	
	 	<style>
            td{
                width: 300px;
            }
        </style>

	</head>
	<body>
	
	<div>
		<%@include file="../allNav.jsp" %>
	</div>
	
		<div class="container">
			<header>
				<h1> 산업제어시스템 등록/조회</h1>
			</header>
			<hr />
			 


<!-- 검색창 -->
		<div class="jumbotron">
				<p>시스템 검색</p>
				
					<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">시스템 코드</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1">
					    <span class="input-group-addon" id="basic-addon1">시스템명</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1">
					</div>


					<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">기능유형</span>
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    Action <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">Action</a></li>
					    <li><a href="#">Another action</a></li>
					    <li><a href="#">Something else here</a></li>
					  </ul>
  
  
					    <span class="input-group-addon" id="basic-addon1">시스템 구분</span>
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    Action <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">Action</a></li>
					    <li><a href="#">Another action</a></li>
					    <li><a href="#">Something else here</a></li>
					  </ul>
					</div>

      	</div>
            		
          		

			
			<hr />
			
			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<tr>
						<th>id</th><th>system_CODE</th><th>system_NAME</th><th>system_FUNCTION</th>
						<th>system_SSEP</th><th>system_COMM</th><th>safety_level_CODE</th>
						<th>is_CRITICAL</th><th>func_type_CODE</th>
						</tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.id}" /></td>
								<td><c:out value="${list.system_CODE}" /></td>
								<td><c:out value="${list.system_NAME}" /></td>
								<td><c:out value="${list.system_FUNCTION}" /></td>
								<td><c:out value="${list.system_SSEP}" /></td>
								<td><c:out value="${list.system_COMM}" /></td>
								<td><c:out value="${list.safety_level_CODE}" /></td>
								<td><c:out value="${list.is_CRITICAL}" /></td>
								<td><c:out value="${list.func_type_CODE}" /></td>
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
    					</li>0
    					
    				
  				</ul>
  				
  				<!-- 등록버튼(모달창) -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#systemReg" style="float:right">
					시스템 등록
					</button>
  				

			</nav>			
			
			

			

			
			<hr />
		</div>
	</body>
</html>