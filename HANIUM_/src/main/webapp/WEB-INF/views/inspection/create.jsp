<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String contextPath = request.getContextPath();
%>

<body>

<form method="post" action="<%=contextPath%>/inspection/insert">	
	<div class="input-group" style="margin-bottom=10px">
		<span class="input-group-addon" id="basic-addon1" style="width:120px;"><b>CDA 유형 매핑</b></span>
		<span>
			<span style="padding:0px 15px 0px 5px; ">
				<input type='radio' name='CDA_type' value='pc/server' />PC/Server</span>
			<span style="padding:0px 15px 0px 0px;">
				<input type='radio' name='CDA_type' value='A.1' />A.1</span>
			<span style="padding:0px 15px 0px 0px;">
			<input type='radio' name='CDA_type' value='A.2' />A.2</span>
			<span style="padding:0px 15px 0px 0px;">
			<input type='radio' name='CDA_type' value='A.3' />A.3</span>
			<span style="padding:0px 15px 0px 0px;">
			<input type='radio' name='CDA_type' value='B.1' />B.1</span>
			<span style="padding:0px 15px 0px 0px;">
			<input type='radio' name='CDA_type' value='B.2' />B.2</span>
			<span style="padding:0px 15px 0px 0px;">
			<input type='radio' name='CDA_type' value='B.3' />B.3</span>
		</span>
	</div>
	
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 분류</b></span>
					<div class="btn-group">
						<select id="groupList" name="groupList"  style="height:30px;" onchange="categoryChange(this)">
							<option value="" selected>점검 분류 선택</option>
					       <c:forEach var="group" items="${groupList}">
					           <option value="${group.code_type_no}">${group.code_type_name}</option>
					       </c:forEach>
					   </select>
		</div>
	</div>
	
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 항목명</b></span>
	  <div class="btn-group">
					 <select id="insSelectList" name="insSelectList" style="width:440px; height:30px;" onchange="showDetail(this)">
					  <option value="" >점검 항목명</option>
					</select>
	
		</div>
	</div>
	
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 상세 내용</b></span>
	  <div class="btn-group">
	  	<div id="detailInput" style="width:440px; height:50px">
	  	
	  	</div>
		</div>
	</div>
	<div class="input-group">
	  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>대안 조치 내용</b></span>
	<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:440px; height:200px">
	</div>
	<div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <button type="submit" class="btn btn-primary">Save changes</button>
     </div>
</form>


</body>


</html>