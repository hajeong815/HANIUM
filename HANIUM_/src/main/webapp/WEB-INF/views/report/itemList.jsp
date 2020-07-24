<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<form role="form" method="post" action="<%=request.getContextPath()%>/report/update">

	<div class="input-group" style="height:30px">
		<span class="input-group-addon" id="basic-addon1"><b>CDA 유형</b></span>
			<input type="text"  id="cda_type" name="cda_type" style="margin-right:15px; width:100px; height:30px" readonly >
				
		<span class="input-group-addon" id="basic-addon1" ><b>CDA 코드</b></span>		
			<input type="text" id="cda_code" style="width:200px; height:30px" value="${itemList.cda_code}" readonly >				
	</div>
	 
	<div class="input-group" style="margin-top:20px">
	  	<span class="input-group-addon" id="basic-addon1" style="width:120px"><b>필수디지털자산명</b></span>
			<input type="text" id="cda_name" name="cda_name" style="margin-right:15px; width:350px; height:30px" value="${itemList.cda_name}" readonly >
	</div>
	
	<div class="input-group" style="margin-top:20px">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>조치 기간</b></span>
			<input type="text" name="peroid" style="margin-right:15px; width:100px; height:30px" value="${itemList.period}">
	</div>
	
	<div class="input-group" style="margin-top:20px">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>부적합 내용</b></span>
			<textarea class="form-control" name="content" aria-describedby="basic-addon1" style="width:440px; height:180px; overflow: scroll; word-wrap: break-word;" >${itemList.content}</textarea>
			
	</div>
	
	<div class="input-group" style="margin-top:20px">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>조치 내용</b></span>
	  		<textarea class="form-control" name="alter_measure" aria-describedby="basic-addon1" style="width:440px; height:180px; overflow: scroll; word-wrap: break-word;" >${itemList.measure_content}</textarea>
	</div>
	
	<div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
       <button type="submit" class="btn btn-primary" id="updatebtn">수정</button>
     </div>
     
</form>


</body>


</html>
