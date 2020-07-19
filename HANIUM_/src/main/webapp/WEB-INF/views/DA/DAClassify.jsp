<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>

<!-- 화면UI피드백.txt 필독 -->
<!-- DAClassify 파일에서 사용자로부터 입력받은 값으로 DA 식별(필수디지털자산인지 아닌지) & DB에 저장(insert) -->
<!-- 필수 시스템 코드와 필수시스템명은 이미 DB에 저장되어 있는  값들로부터 불러와야 함(<select>로 사용자가 선택할 수 있도록) -->
<!-- 각 태그 내 id, name 등은 기능에 맞게 변경해야 함 -->

	<div  class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1">필수 시스템 코드</span>
			<select id="ifDigital" name="if_Digital" style="height:30px; width:250px;">
						
						<!-- DB의 systemList 테이블의 필수시스템 코드 가져와 <option>으로 나오도록 -->
						
		    </select>	
		    
		
		<span class="input-group-addon" id="basic-addon1">필수 시스템명</span>
			<select id="ifDigital" name="if_Digital" style="height:30px; width:250px;">
						
						<!-- DB의 systemList 테이블의 필수시스템명을 가져와 <option>으로 나오도록 or 사용자가 선택한 필수시스템코드를 받아서 DB에 필수시스템코드가
							같은 필수시스템명만 출력하도록 쿼리 -->
						
		    </select>	
	</div>
	
	
	<div class="input-group" style="padding:5px;">
	
		<span class="input-group-addon" id="basic-addon1">디지털자산 코드</span>
		<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:260px">
		
		<span class="input-group-addon" id="basic-addon1">디지털자산명</span>
		<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:260px">
		
	</div>
	
	<div class="input-group" style="padding:5px;">
		<span class="input-group-addon" id="basic-addon1">디지털자산 기능</span>		
		<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:660px; height:150px">
	</div>

	
	<div class="input-group" style="padding:5px;">
	
			<span class="input-group-addon" id="basic-addon1">기능 유형</span>
					  
					  <select style="height:60px; width:100px">
					  			<option>PC/Server</option>
					  			<option>Transmitter, Indicator</option>
					  			<option>Network Switch</option>
					  			<option>Control System(DCS, PLC)</option>
					  			
					  </select>
					  
			<span class="input-group-addon" id="basic-addon1">안전 등급</span>
					  
					  <select style="height:60px; width:100px">
					  			<option>안전</option>
					  			<option>비안전</option>
					  			
					  </select>		
					  
			<span class="input-group-addon" id="basic-addon1">사이버공격 침해</span>
					  
					  <select style="height:60px; width:100px">
					  			<option>영향 없음</option><!-- '영향 없음'이면 non-CDA -->
					  			<option>원자로 정지</option>
					  			<option>원자로 트립 불능</option>
					  			<option>터빈 정지</option>
					  			
					  </select>					  			 
					
					
			<span class="input-group-addon" id="basic-addon1">디지털 여부</span>
					  
					  <select style="height:60px; width:100px">
					  			<option>디지털</option>
					  			<option>아날로그</option>
					  			
					  </select>	
	</div>
	
	
	<div class="input-group" style="padding:5px;">
	
			<span class="input-group-addon" id="basic-addon1">통신 연결자산</span>
				<select style="height:50px; width:310px">
				<!-- 기 입력된 디지털자산/디지털자산명 확인 후 선택(DB에 미리 입력되어 있는 디지털자산명 불러오기 -->
				</select>
				
			<span class="input-group-addon" id="basic-addon1">통신 기능</span>
				<select style="height:50px; width:310px">
							<option>Ethernet</option>
							<option>RS-232</option>
							<option>RS-422</option>
							<option>RS-485</option>
							<option>Hardwire</option>
				</select>				
				
	</div>
	
	<div class="input-group" style="padding:5px;">
	
			<span class="input-group-addon" id="basic-addon1">외부저장장치 지원 기능</span>
				<select style="height:50px; width:250px">
							<option>USB I/F</option>
							<option>메모리카드 I/F</option>
							<option>기능 없음</option>
				</select>
				
			<span class="input-group-addon" id="basic-addon1">HMI 연결</span>
				<select style="height:50px; width:300px">
							<option>Local HMI</option>
							<option>Integral HMI</option>
				</select>				
	
	</div>	
	
	<div class="input-group" style="padding:5px;">
	<!-- 다중체크박스 -->
	
					<span class="input-group-addon" id="basic-addon1" style="width:200px">HMI 변경기능</span>
					<div class="form-check" style="width:200px">
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					운전변수
					  </label>
					  <br/>
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					Control Logic
					  </label>
					  <br/>
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					Firmware
					  </label>
					</div>
					
					
			<span class="input-group-addon" id="basic-addon1">지원가능 자산</span>
				<select style="height:60px; width:300px">
				<!-- 기 입력된 디지털자산/디지털자산명 확인 후 선택(DB에 미리 입력되어 있는 디지털자산명 불러오기 -->
				</select>
					
	</div>



</body>
</html>
