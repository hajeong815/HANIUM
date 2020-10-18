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
		
		<p>디지털자산 검색</p>

					<div class="input-group" style="padding:5px;">
					
					<!-- span 태그 id는 각 값에 맞도록 변경해야함 -->
					
					  <span class="input-group-addon" id="DA_code">디지털자산 코드</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					  
					  <span class="input-group-addon" id="DA_name">디지털자산명</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					  
					  </div>
					  
					  
					  <div class="input-group" style="padding:5px;">
				
					    <span class="input-group-addon" id="basic-addon1" style="width:100px">디지털자산 구분</span>
					    
	                    <select id="ifCDA" name="if_CDA" style="height:30px; width:250px;">
	                          <option>디지털자산</option>
	                          <option>필수디지털자산</option>
	                    </select>
	         
	                    				  
					 
					<span class="input-group-addon" id="basic-addon1">필수디지털자산 유형</span>
					  
					  <select id="CDA_type" name="CDA_mapping" style="height:30px; width:220px">
					  			<option>PC/Server</option>
					  			<option>A.1</option>
					  			<option>A.2</option>
					  			<option>A.3</option>
					  			<option>B.1</option>
					  			<option>B.2</option>
					  			<option>B.3</option>
					  			
					  </select>
			
					  
					  </div>


		<div class="input-group" style="padding:5px;">
		
				<span class="input-group-addon" id="basic-addon1">필수디지털자산 기능 유형</span>
					  
					  <select id="CDA_type" name="CDA_mapping" style="height:30px; width:220px">
					  			<option>PC/Server</option>
					  			<option>Transmitter, Indicator</option>
					  			<option>Network Switch</option>
					  			<option>Control System(DCS, PLC)</option>
					  			
					  </select>
					
					<span class="input-group-addon" id="basic-addon1" style="width:125px">디지털 여부</span>
					  
	                    <select id="ifDigital" name="if_Digital" style="height:30px; width:250px;">
	                          <option>디지털</option>
	                          <option>아날로그</option>
	                    </select>	
	     </div>
					  
					
					

		
					<div align="right">
					
					<!-- 조회할 값 읽어와서 버튼 click 시 검색 진행(script function 작성)  -->
	               		<button class="btn btn-primary" name="btnSearch" id="btnSearch">조회</button>
	               </div>
	               
	               </div>
            		
          		

			
			<hr />
			
			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<tr>
						<th>no</th><th>디지털자산 코드</th><th>디지털자산명</th><th>디지털자산 기능</th>
						<th style="width: 180px;">디지털자산 기능 유형</th>
						<th>디지털 여부</th><th style="width: 150px;">디지털자산 유형</th>
						
						</tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.id}" /></td>
								<td><c:out value="${list.DA_CODE}" /></td>
								<td><c:out value="${list.DA_NAME}" /></td>
								<td><c:out value="${list.DA_FUNCTION}" /></td>
								<td><c:out value="${list.DA_FUNC_TYPE_CODE}" /></td>
								<td><c:choose>
										<c:when test="${list.SAFETY_LEVEL_CODE eq 1}">안전</c:when>
										<c:when test="${list.SAFETY_LEVEL_CODE eq 0}">비안전</c:when>
									</c:choose>
								</td>
								<td><c:choose>
										<c:when test="${list.IS_CRITICAL eq 1}">필수디지털자산</c:when>
										<c:when test="${list.IS_CRITICAL eq 0}">NON-필수디지털자산</c:when>
									</c:choose>
								</td>
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
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg" style="float: right;">디지털자산 등록</button>
				
				<form method="post" action="<%=request.getContextPath()%>/DA/insert">	
				<!-- Modal -->
				<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	  				<div class="modal-dialog modal-lg">
	  					<div class="modal-content">
					      <div class="modal-header">
	  							<h5 class="modal-title" id="exampleModalLabel">디지털자산 등록</h5>
							      <div class="modal-body">
							        <%@include file="DAClassify.jsp" %>
							      </div>
							      
							      <div class="modal-footer">
					        		<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					        		<button type="submit" class="btn btn-primary">등록</button>
					      		  </div>
	  						</div>
						</div>
					</div>
				</div>
				</form>
  				

			</nav>		
			
			<hr />
		</div>
	</body>
	

	
</html>


