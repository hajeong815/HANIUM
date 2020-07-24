<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
   <head>
   
   <!-- bootstrap -->
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
   
<meta charset="UTF-8">
<title>기술적 보안성 평가</title>
<style>
	input.form-control:read-only {
        background-color: #fff;
    }
    
    table, th, td {
    	text-align: center;
    }
</style>
</head>
<body>

	<div>
      <%@include file="../allNav.jsp" %>
    </div>

    <div class="container">
         <header>
            <h3> 기술적 보안성 평가</h3>
         </header>
         <hr />
         
   		<div class="jumbotron">
			<div class="input-group">
			  <span class="input-group-addon" id="basic-addon1">CDA 유형</span>
			  <input type="text" class="form-control" style="width:100px" value="PC/Server" readonly/>
			   
			  <span class="input-group-addon" id="basic-addon1">디지털 자산코드</span>
			  <input type="text" id="cda_code" class="form-control" style="width:130px" value="RPS 001" readonly/>
			  
			  <span class="input-group-addon" id="basic-addon1">필수디지털 자산명</span>
			  <input type="text" class="form-control" value="RPS Safety System Control Panel #1" readonly/>
			</div>
      	</div>
		
		<section id="container">
          <table class="table table-hover">
             <tr>
                <th class="col-md-2">점검 분류</th>
                <th class="col-md-4">기술적 보안조치</th>
                <th class="col-md-0.2">Yes</th>
                <th class="col-md-0.2">No</th>
                <th class="col-md-4">대안조치</th>
                <th class="col-md-0.2">Yes</th>
                <th class="col-md-0.2">No</th>
             </tr>
          <c:forEach items="${list}" var = "vo">
             <tr>
             	<td>${vo.inspect_group}</td>
             	<td>${vo.content}</td>
             	<td><input type="radio" name="ins_chk${vo.id}" value="y"></td>
             	<td><input type="radio" name="ins_chk${vo.id}" value="n"></td>
             	<td>${vo.alter_measure}</td>
             	<td><input type="radio" name="alt_chk${vo.id}" value="y"></td>
             	<td><input type="radio" name="alt_chk${vo.id}" value="n"></td>
             </tr>
          </c:forEach>
          </table>
       </section>
       
       <input id="popSolution" type="hidden">
       <input id="popPeriod" type="hidden">
       <input id="eva_done_yn" type="hidden" value="1">
       
      <div style="margin-left: 20px;">
      	<br>
      	<label for="period">점검주기 (M)</label>
      	<input class="form-control" style="width:70px;" name="period" id="period" type="number" min="1" max="12"><br><br>
      	
	    <label for="content">점검 내용</label>
	    <textarea style="width:500px;" name="content" class="form-control" id="content" rows="5"></textarea><br><br>
	    
	    <label for="solution">보완 요청사항</label>
	    <textarea style="width:700px;" name="comment" class="form-control" id="comment" rows="6"></textarea><br><br>
	  </div>

     <div align="right" style="margin-top:20px; margin-bottom: 20px;">
       	<button class="btn btn-danger" name="btnReset" id="btnReset" style="margin-right:20px">취소</button>
       	<button class="btn btn-primary" name="btnSubmit" id="btnSubmit">등록</button>
     </div>  
	</div>


<script>
	$(document).ready(function() {
		<c:forEach items="${list}" var="vo">
		$("input:radio[name=ins_chk${vo.id}]").change(function() {
			
			if($("input[name=ins_chk${vo.id}]:checked").val() == "y"){
				$("input:radio[name=alt_chk${vo.id}]").attr("disabled", true);
			} 
			else if ($("input[name=ins_chk${vo.id}]:checked").val() == "n"){
				$("input:radio[name=alt_chk${vo.id}]").attr("disabled", false);
			}
		});
		</c:forEach>
	
		$(document).on('click', '#btnSubmit', function(e) {
			var noncon_ins_id = [];
			
			<c:forEach items="${list}" var="vo">
				if ( ($("input[name=ins_chk${vo.id}]:checked").val() == 'n') && ($("input[name=alt_chk${vo.id}]:checked").val() == 'n') ) {
					noncon_ins_id.push(${vo.id});
				}
			</c:forEach>
			
			if (noncon_ins_id.length > 0 && $('#popSolution').val() == '') {
				console.log("======================");
				console.log("eva_done_yn = " + eva_done_yn);
				window.name = "parentForm";
				var openWin = window.open('../noncon_create.jsp', 'popForm', 'width=500, height=700');
			}
			var form = {
				noncon_ins_id : JSON.stringify(noncon_ins_id),
				cda_code : $('#cda_code').val(),
				content : $('#content').val(),
				comment : $('#comment').val(),
				period : $('#period').val(), 
				eva_done_yn : $('#eva_done_yn').val(), 
				popSolution : $('#popSolution').val(),
				popPeriod : $('#popPeriod').val()
			};
			
			if (noncon_ins_id.length == 0 || $('#popSolution').val() != '') {
				$.ajax({
					type: "post", 
					url: "<%=request.getContextPath()%>/security/insert", 
					dataType: "json", 
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					data: form, 
					success: function(Data) {
						console.log("200~");
						location.replace("<%=request.getContextPath()%>/security/list");
					},
					error: function(e) {
						console.log("300~");
						location.replace("<%=request.getContextPath()%>/security/list");
					}
				});
			}
		});
	});
	
</script>
</body>
</html>
