<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	<title>국가기반시설 정보보안 관리체계</title>
	</head>
	<body>
		<div class="container">
			<header>
				<h1> 산업제어시스템</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="nav.jsp" %>
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
			<hr />
		</div>
	</body>
</html>