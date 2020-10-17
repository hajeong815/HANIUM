<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>

<form method="post" action="<%=request.getContextPath()%>/inspection/insert">	
	<div class="input-group" style="margin-bottom=10px">
		<span class="input-group-addon" id="basic-addon1" style="width:120px;"><b>CDA 유형 매핑</b></span>
		<span>
			<span>
				<input type='radio' name='cda_mapping' value='pc/server' />PC/Server</span>
			<span>
				<input type='radio' name='cda_mapping' value='A.1' />Telecommunication Facilities HF</span></br>
			<span>
				<input type='radio' name='cda_mapping' value='A.2' />Telecommunication Facilities MF</span></br>
			<span>
				<input type='radio' name='cda_mapping' value='A.3' />Telecommunication Facilities LF</span></br>
			<span>
				<input type='radio' name='cda_mapping' value='A.3' />Field Facilities LF</span></br>
			<span>
				<input type='radio' name='cda_mapping' value='A.3' />Field Facilities LF</span></br>
			<span>
				<input type='radio' name='cda_mapping' value='A.3' />Field Facilities LF</span>
	</div>
	
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 분류</b></span>
					<div class="btn-group">
						<select id="groupList2" name="inspect_group"  style="height:30px;" onchange="categoryChange2(this)">
							<option value="" selected>접근통제 및 인증</option>
					       <c:forEach var="group" items="${groupList}">
					           <option value="${group.code_type_no}">${group.code_type_name}</option>
					       </c:forEach>
					   </select>
		</div>
	</div>
	
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 항목명</b></span>
	  <div class="btn-group">
					 <select id="insSelectList2" name="inspect_group_list" style="width:440px; height:30px;" onchange="showDetail2(this)">
					  <option value="" >접근통제 절차 이행</option>
					</select>
	
		</div>
	</div>
	
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 상세 내용</b></span>
	  <div class="btn-group">
	  	<div id="detailInput2" style="width:440px; height:70px; border:1px solid;">
	  	수립된 접근통제 정책 및 절차에 따라 필수디지털자산에 대한 접근통제 이행
	  	</div>
		</div>
	</div>
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>대안 조치 내용</b></span>
	  <textarea class="form-control" name="alter_measure" aria-describedby="basic-addon1" style="width:440px; height:200px; overflow: scroll; word-wrap: break-word;" ></textarea>
	</div>
	<div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <button type="submit" class="btn btn-primary">Save changes</button>
     </div>
</form>


</body>


</html>
