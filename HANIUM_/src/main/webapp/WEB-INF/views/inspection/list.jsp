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
	
<meta charset="UTF-8">
<title>기술적 보안조치항목 조회</title>
</head>
<body>
	
	<div>
		<%@include file="../allNav.jsp" %>
	</div>
	
	<div class="container">
			<header>
				<h3> 기술적 보안조치항목 등록/조회</h3>
			</header>
			<hr />
			
		<!-- 검색창 -->
		<div class="jumbotron">
		
		<p>기술적 보안조치 항목 검색</p>			
					
		<div class="input-group" >
					  <span class="input-group-addon" id="basic-addon1">CDA 유형</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">PC/Server</a></li>
					    <li><a href="#">A.1</a></li>
					    <li><a href="#">A.2</a></li>
					    <li><a href="#">A.3</a></li>
					    <li><a href="#">B.1</a></li>
					    <li><a href="#">B.2</a></li>
					    <li><a href="#">B.3</a></li>
					  </ul>
					</div>
					  
  
					    <span class="input-group-addon" id="basic-addon1">점검 항목</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">계정 관리</a></li>
					    <li><a href="#">접근권한 관리</a></li>
					    <li><a href="#">비밀번호 관리</a></li>
					    <li><a href="#">로그 관리</a></li>
					    <li><a href="#">데이터 암호화</a></li>
					  </ul>
					</div>
										
		</div>
					<div align="right">
					<button class="btn btn-primary" >조회</button>
					</div>
      	</div>
      	
 			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<tr>
						<th>no</th><th>CDA 유형</th><th>보안 영역</th><th>점검 분야</th>
						<th>점검 내용</th><th>대안 조치 내용</th><th>보안성평가 여부(y/n)</th>
						</tr>
						
						<c:forEach items="${getInspectionList}" var = "getInspectionList">
							<tr>
								<td><c:out value="${getInspectionList.id}" /></td>
								<td><c:out value="${getInspectionList.Cda_mapping}" /></td>
								<td><c:out value="${getInspectionList.Inspect_group}" /></td>
								<td><c:out value="${getInspectionList.Inspect_group_list}" /></td>
								<td><c:out value="${getInspectionList.Inspect_checklist}" /></td>
								<td><c:out value="${getInspectionList.Inspect_yn}" /></td>
								<td><c:out value="${getInspectionList.Alter_measure}" /></td> 
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
				  기술적 보안조치 항목 등록
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">기술적 보안조치항목 등록</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <!-- %@include file="create.jsp" %-->
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				        <button type="button" class="btn btn-primary">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>	
			</nav>		

	<hr />
	</div>

</body>
</html>