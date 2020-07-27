<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri = "http://www.springframework.org/tags/form" %> 

<html>
   <head>
   
   <!-- bootstrap -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
   
<meta charset="UTF-8">
<title>부적합 보고서 수정</title>
</head>
<body>
	<div>
      <%@include file="../allNav.jsp" %>
   </div>
   
   <div class="container">
         <header>
            <h3>부적합 보고서 수정</h3>
         </header>
         <hr />
         
		<form:hidden path="bno" />
		<input type="hidden" name="mode" />



         
	<div class="input-group" style="height:30px;">
		<span class="input-group-addon" id="basic-addon1"><b>CDA 유형</b></span>
			<form:input path="cda_type"  id="cda_type" name="cda_type" value="${itemList.cda_type}" style="margin-right:15px; width:100px; height:30px" readonly >
				
		<span class="input-group-addon" id="basic-addon1" ><b>CDA 코드</b></span>		
			<input type="text" id="cda_code" style="width:200px; height:30px" value="${itemList.cda_code}" readonly >				

	 

	  	<span class="input-group-addon" id="basic-addon1" style="width:120px"><b>필수디지털자산명</b></span>
			<input type="text" id="cda_name" name="cda_name" style="margin-right:15px; width:350px; height:30px" value="${itemList.cda_name}" readonly >
	</div>
	
	<div class="input-group" style="margin-top:20px">
	  <span class="input-group-addon" id="basic-addon1" ><b>조치 기간</b></span>
			<input type="text" name="peroid" style="margin-right:15px; width:100px; height:30px" value="${itemList.period}">
	</div>
	
	<div class="input-group" style="margin-top:20px">
	  <span class="input-group-addon" id="basic-addon1" ><b>부적합 내용</b></span>
			<textarea class="form-control" name="content" aria-describedby="basic-addon1" style="width:440px; height:200px; overflow: scroll; word-wrap: break-word;" >${itemList.content}</textarea>
				

	  <span class="input-group-addon" id="basic-addon1" ><b>조치 내용</b></span>
	  		<textarea class="form-control" name="measure_content" aria-describedby="basic-addon1" style="width:440px; height:200px; overflow: scroll; word-wrap: break-word;" >${itemList.measure_content}</textarea>
	</div>
	
	<div class="modal-footer">
       <a href="/controller/report/list" class="btn btn-secondary">목록</a>
       <a href="/controller/report/update" class="btn btn-primary">테스트</a>
       <button type="submit" class="btn btn-primary" id="update_btn">수정</button>
       <td style="text-align: center;"><a href="/controller/report/updateList?bno=${itemList.bno}" class="updatetest">수저어어엉</a><td>	
       
     </div>
     </div>
     
     </body>
</html>



