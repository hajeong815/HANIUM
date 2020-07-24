<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>부적합 보고서 등록</title>
</head>

<body>

<div class="container" style="height: 100%">
         <header>
            <h3>부적합 보고서 등록</h3>
         </header>
         <hr />
         
      <!-- 검색창 -->
      <div class="jumbotron" style="height: 90%">
      
      <p>계정관리의 기술적 보안조치가 완료되지 않았습니다. <br> 부적합 보고서 등록을 완료해 주세요.</p>         
	      <div style="margin-left: 10px;">
	      	<br>
	      	<label for="popPeriod">필요 조치 기간 (M)</label>
	      	<input class="form-control" style="width:70px;" name="period" id="period" type="number" min="1" max="12"><br><br>
	      	
		    <label for="popContent">필요 조치 내용</label>
		    <textarea style="width:100%;" name="content" class="form-control" id="solution" rows="10"></textarea><br><br>
		    <br><br>
		   
		  </div>
   		  <div align="right">
          	<button class="btn btn-primary" name="btnCom2" id="btnCom2">완료</button>
          </div>   
      </div>
</div>


</body>
<script>
	$(document).on('click', '#btnCom2', function(e) {
		$("#eva_done_yn", opener.document).val("0");
		$("#popPeriod", opener.document).val($("#period").val());
		$("#popSolution", opener.document).val($("#solution").val());
		self.close();
	})
</script>

</html>