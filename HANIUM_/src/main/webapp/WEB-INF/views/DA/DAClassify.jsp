<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>

<!-- 화면UI피드백.txt 필독 -->
<!-- DAClassify 파일에서 사용자로부터 입력받은 값으로 DA 식별(필수디지털자산인지 아닌지) & DB에 저장(insert) -->
<!-- 필수 시스템 코드와 필수시스템명은 이미 DB에 저장되어 있는  값들로부터 불러와야 함(<select>로 사용자가 선택할 수 있도록) -->
<!-- 각 태그 내 id, name 등은 기능에 맞게 변경해야 함 -->

	<div  class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1">필수 시스템 코드</span>
			<select id="ifDigital" name="CRI_SYSTEM_NO" style="height:30px; width:250px;">
				<c:forEach var="system" items="${systemList}">
					<option value="${system.system_CODE}">${system.system_CODE}</option>
				</c:forEach>
		    </select>	
		    
		<span class="input-group-addon" id="basic-addon1">필수 시스템명</span>
			<select id="ifDigital" name="CRI_SYSTEM_NAME" style="height:30px; width:250px;">
				<c:forEach var="system" items="${systemList}">
					<option value="${system.system_NAME}">${system.system_NAME}</option>
				</c:forEach>			
		    </select>	
	</div>

	
	<div class="input-group" style="padding:5px;">
	
		<span class="input-group-addon" id="basic-addon1">디지털자산 코드</span>
		<input type="text" name="DA_CODE" class="form-control" aria-describedby="basic-addon1" style="width:260px">
		
		<span class="input-group-addon" id="basic-addon1">디지털자산명</span>
		<input type="text" name="DA_NAME" class="form-control" aria-describedby="basic-addon1" style="width:260px">
		
	</div>
	
	<div class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1">디지털자산 기능</span>		
		<input type="text" name="DA_FUNCTION" class="form-control" aria-describedby="basic-addon1" style="width:660px; height:150px">
	</div>

	
	<div class="input-group" style="padding:5px;">
	
			<span class="input-group-addon" id="basic-addon1">기능 유형</span>
				  <select name="DA_FUNC_TYPE_CODE"style="height:60px; width:100px">
				  			<option value="Safety(안전)">Safety(안전)</option>
				  			<option value="Security(보안)">Security(보안)</option>
				  </select>
				  
			<span class="input-group-addon" id="basic-addon1">안전 등급</span>
					  <select name="SAFETY_LEVEL_CODE" style="height:60px; width:100px">
					  			<option value="1">안전</option>
					  			<option value="0">비안전</option>
					  </select>		
					  
			<span class="input-group-addon" id="basic-addon1">사이버공격 침해</span>
					  <select name="CYBER_ATTACK_CODE" style="height:60px; width:100px">
					  			<option value="영향 없음">영향 없음</option><!-- '영향 없음'이면 non-CDA -->
					  			<option value="원자로 정지">원자로 정지</option>
					  			<option value="원자로 트립 불능">원자로 트립 불능</option>
					  			<option value="터빈 정지">터빈 정지</option>
					  </select>					  			 
					
					
			<span class="input-group-addon" id="basic-addon1">디지털 여부</span>
					  <select name="DIGITAL_OR_NOT_CODE" style="height:60px; width:100px">
				  			<option value="1">디지털</option>
				  			<option value="0">아날로그</option>
					  </select>	
	</div>

	
	<div class="input-group" style="padding:5px;">
			<span class="input-group-addon" id="basic-addon1">통신 연결자산</span>
				<select name="DA_COMM" style="height:50px; width:310px">
					<option value="없음">없음</option>
					<option value="MCR OIS">MCR OIS</option>
					<option value="Data Server">Data Server</option>
					<option value="System Cabinet">System Cabinet</option>
					<option value="출입통제서버">출입통제서버</option>
					<option value="지문서버">지문서버</option>
					<option value="지문리더기">지문리더기</option>
					<option value="출입통제콘솔">출입통제콘솔</option>
					<option value="ASTS MTP">ASTS MTP</option>
					<option value="ASTS System Cabinet">ASTS System Cabinet</option>
					<option value="ASTS Panel">ASTS Panel</option>
				</select>
				
			<span class="input-group-addon" id="basic-addon1">통신 기능</span>
				<select name="COMM_FUNC_CODE" style="height:50px; width:310px">
					<option value="Ethernet">Ethernet</option>
					<option value="RS-232">RS-232</option>
					<option value="RS-422">RS-422</option>
					<option value="RS-485">RS-485</option>
					<option value="Hardwire">Hardwire</option>
				</select>				
				
	</div>
	
	<div class="input-group" style="padding:5px;">
	
			<span class="input-group-addon" id="basic-addon1">외부저장장치 지원 기능</span>
				<select name="STORAGE_CODE" style="height:50px; width:250px">
					<option value="USB">USB I/F</option>
					<option value="메모리카드">메모리카드 I/F</option>
					<option value="기능 없음">기능 없음</option>
				</select>
				
			<span class="input-group-addon" id="basic-addon1">HMI 연결</span>
				<select name="HMI_CON_CODE" style="height:50px; width:300px">
					<option value="Local HMI">Local HMI</option>
					<option value="Integral HMI">Integral HMI</option>
				</select>				
	
	</div>	
	
	<div class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1" style="width:200px">HMI 변경기능</span>
		<div class="form-check" style="width:200px">
		  <input class="form-check-input" type="radio" name="HMI_CHANGE_CODE" value="운전변수" id="defaultCheck1">
		  <label class="form-check-label" for="defaultCheck1">
		운전변수
		  </label>
		  <br/>
		  <input class="form-check-input" type="radio" name="HMI_CHANGE_CODE" value="Control Logic" id="defaultCheck1">
		  <label class="form-check-label" for="defaultCheck1">
		Control Logic
		  </label>
		  <br/>
		  <input class="form-check-input" type="radio" name="HMI_CHANGE_CODE" value="Firmware" id="defaultCheck1">
		  <label class="form-check-label" for="defaultCheck1">
		Firmware
		  </label>
		</div>
					
		<span class="input-group-addon" id="basic-addon1">지원가능 자산</span>
			<select name="DA_SUPPORT_FUNC" style="height:60px; width:300px">
				<c:forEach var="da" items="${list}">
					<option value="${da.DA_NAME}">${da.DA_NAME}</option>
				</c:forEach>
		</select>
	</div>
</body>
</html>
