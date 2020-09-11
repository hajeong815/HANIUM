<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   
<body>

<!-- 화면UI피드백.txt 필독 -->
<!-- systemClassify 파일에서 사용자로부터 입력받은 값으로 필수시스템 & DB에 저장(insert) -->
<!-- 필수 시스템 코드와 필수시스템명은 이미 DB에 저장되어 있는  값들로부터 불러와야 함(<select>로 사용자가 선택할 수 있도록) -->
<!-- 각 태그 내 id, name 등은 기능에 맞게 변경해야 함 -->



<form role="form" method="post" action="/system/classify">

	<div  class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1">시스템 코드</span>
		<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:260px" name="system_CODE">

		    
		<span class="input-group-addon" id="basic-addon1">시스템명</span>
		<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:260px" name="system_NAME">
		
	</div>
	
	<div class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1">시스템 기능</span>		
		<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:660px; height:150px" name="system_FUNCTION">
	</div>	


	<div class="input-group" style="padding:5px;">
					  
			<span class="input-group-addon" id="basic-addon1">안전 등급</span>
					  
					  <select style="height:60px; width:100px">
					  			<option>안전</option>
					  			<option>비안전</option>
					  			
					  </select>		
					  
			<span class="input-group-addon" id="basic-addon1">통신 연결시스템</span>
					  
					  <select style="height:60px; width:100px">
					  		<option>방사선감시계통</option>
					  		<option>지진감시계통</option>
					  		<option>자동지진정지계통</option>
					  		<option>발전소정보계통</option>
					  		<option>출입통제계통</option>
					  		<option>침입탐지계통</option>
					  			
					  			<!-- 기 입력된 시스템코드/시스템명 확인 후 선택 -> DB에 미리 입력되어 있는 시스템명 불러와서 <option> 태그로 보여주기 -->
					  </select>					  			 
					
			<span class="input-group-addon" id="basic-addon1">SSEP 지원시스템</span>
					  
					  <select style="height:60px; width:100px">
					  		<option>원자로냉각재계통</option>
					  		<option>방사선감시계통</option>
					  		<option>지진감시계통</option>
					  		<option>자동지진정지계통</option>
					  		<option>발전소정보계통</option>
					  		<option>출입통제계통</option>
					  		<option>침입탐지계통</option>
					  		
					  			<!-- 기 입력된 시스템코드/시스템명 확인 후 선택 -> DB에 미리 입력되어 있는 시스템명 불러와서 <option> 태그로 보여주기 -->
					  </select>	
					  
			<!-- 
			
			<span> 기능유형</span>
			<select>
			...
			</select>
					- 조건1 : '안전등급'을 안전으로 선택한 경우
					or
					- 조건2 : 'SSEP 지원시스템'에서 필수시스템을 선택한 경우
					or
					- 조건3 : '통신 연결시스템'에서 필수시스템을 선택한 경우
					통신이 필수시스템->해당 등록하는 시스템 연결되어있으면 똑같이 필수시스템으로 구분
					
					-> 조건1/2/3에 따라 필수시스템으로 구분된 시스템은 '기능유형'이 선택 가능하도록 셀렉트박스 활성화
			
			-->
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
		<button type="submit" class="btn btn-primary">등록</button>
	</div>
</form>
	
	
</body>
</html>