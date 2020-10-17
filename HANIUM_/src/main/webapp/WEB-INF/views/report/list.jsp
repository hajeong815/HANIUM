<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>부적합 보고서</title>
</head>
<body>
	<div>
		<%@include file="../allNav.jsp"%>
	</div>


	<div class="container">
		<header>
			<h3>부적합 보고서</h3>
		</header>
		<hr />

		<form name="readForm" role="form" method="post">
			<input type="hidden" value="${NonconfirmVO.id}" />
		</form>

		<!-- 검색창 -->
		<div class="jumbotron" style="height: auto">

			<p>부적합 보고서 검색</p>
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">CDA 유형</span>
				<div class="btn-group">
					<select id="cda_type" name="cda_type" style="height: 30px;">
						<option>PC/Server</option>
						<option>A.1</option>
						<option>A.2</option>
						<option>A.3</option>
						<option>B.1</option>
						<option>B.2</option>
						<option>B.3</option>

					</select>
				</div>
				<span class="input-group-addon" id="basic-addon1">필수디지털자산코드</span>
				<div class="btn-group">
					<select id="cda_code" name="cda_code"
						style="height: 30px; width: auto; margin: 0px">
						<option value="" selected>선택</option>
						<c:forEach var="code" items="${list}">
							<option value="${code.cda_code}">${code.cda_code}</option>
						</c:forEach>
					</select>

				</div>

				<span class="input-group-addon" id="basic-addon1">필수디지털자산명</span>
				<div class="btn-group">
					<select id="cda_name" name="cda_name"
						style="height: 30px; width: auto">
						<option value="" selected>선택</option>
						<c:forEach var="code" items="${list}">
							<option value="${code.cda_name}">${code.cda_name}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="input-group" style="margin-top: 20px">
				<span class="input-group-addon" id="basic-addon1">조치 기간(M)</span>
				<div class="btn-group">
					<input type="text" id="period" name="period"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						style="background-color: ffffff; border: 1px solid; height: 30px; width: 50px; margin-right: 50px"
						placeholder=""></input>

				</div>


				<span class="input-group-addon" id="basic-addon1">부적합 내용</span>
				<div class="btn-group">
					<input type="text" id="content" name="content"
						style="background-color: ffffff; border: 1px solid; height: 30px; width: 250px; margin-right: 50px"
						placeholder="내용을 입력하세요."></input>
				</div>

				<span class="input-group-addon" id="basic-addon1">조치 내용</span>
				<div class="btn-group">
					<input type="text" id="solution" name="solution"
						style="background-color: ffffff; border: 1px solid; height: 30px; width: 250px;"
						placeholder="내용을 입력하세요."></input>
				</div>

			</div>

			<div align="right" style="margin-top: 20px;">
				<button class="btn btn-primary" name="btnSearch" id="btnSearch">조회</button>
			</div>
		</div>


		<section id="container">
			<table class="table table-hover" id="listContent"
				style="font-size: 1em">
				<tr style="font-size: 1em">
					<th class="col-md-0.5" style="text-align: center;">no</th>
					<th class="col-md-1.5" style="text-align: center;">CDA 유형</th>
					<th class="col-md-1.5" style="text-align: center;">CDA 코드</th>
					<th class="col-md-3" style="text-align: center;">부적합 내용</th>
					<th class="col-md-3" style="text-align: center;">조치 내용</th>
					<th class="col-md-1" style="text-align: center;">기간(M)</th>
					<th class="col-md-0.5" style="text-align: center;">조회</th>
					<th class="col-md-0.5" style="text-align: center;">삭제</th>


				</tr>

				<c:forEach items="${list}" var="list">

					<tr>
						<td id="id" name="id" style="text-align: center;"><c:out
								value="${list.id}" /></td>
						<td style="text-align: center;"><c:out
								value="${list.cda_type}" /></td>
						<td style="text-align: center;"><c:out
								value="${list.cda_code}" /></td>
						<!-- <td id="cda_name" style="text-align: center;"><c:out value="${list.cda_name}" /></td> -->
						<td><c:out value="${list.content}" /></td>
						<td><c:out value="${list.solution}" /></td>
						<td style="text-align: center;"><c:out value="${list.period}" /></td>
						<td style="text-align: center;"><a
							href="/report/item?id=${list.id}">조회</a></td>
						<td style="text-align: center;"><a
							href="/report/delete?id=${list.id}" class="delete_btn">삭제</a>
						<td>
					</tr>
				</c:forEach>

			</table>
		</section>

		</form>

		<div class="col-lg-12" id="ex2_Result1"></div>
		<div class="col-lg-12" id="ex2_Result2"></div>



		<!-- 페이지 -->
		<nav>
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">부적합 보고서</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body"></div>

				</div>
			</div>
		</div>

		<c:url var="getListURL" value="/report/list"></c:url>
		<script>
			function fn_contentView(id) {

				var url = "/report/item";
				url = url + "?id=" + id;
				location.href = url;
			}

			$(document).ready(function() {
				var formObj = $("form[name='readForm']");
				$(".delete_btn").on("click", function() {
					if (confirm("삭제하시겠습니까? 삭제시 복구가 불가능합니다.")) {
						formObj.attr("action", "/controller/report/delete");
						formObj.attr("method", "post");
						formObj.submit();
					}
				})

			})

			$(document).on('click', '#btnSearch', function(e) {

				e.preventDefault();

				//var url = "${pageContext.request.contextPath}/report/list";
				var url = "${getListURL}";
				url = url + "?cda_type=" + $('#cda_type').val();
				url = url + "&cda_code=" + $('#cda_code').val();
				url = url + "&cda_name=" + $('#cda_name').val();
				url = url + "&period=" + $('#period').val();
				url = url + "&content=" + $('#content').val();
				url = url + "&solution=" + $('#solution').val();

				location.href = encodeURI(url);
				console.log(url);

			});
		</script>
</body>
</html>

