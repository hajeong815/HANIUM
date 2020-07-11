<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String contextPath = request.getContextPath();
%>

<body>

<form method="post" action="">

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
						<select name="점검 분류" style="height:30px;">
							<option value="none">점검 분류 선택</option>
							 <option value="계정관리">계정관리</option>
							 <option value="접근권한관리">접근권한관리</option>
							 <option value="비밀번호관리">비밀번호관리</option>
							 <option value="로그관리">로그관리</option>
							 <option value="데이터암호화">데이터암호화</option>
						</select>
	</div>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 항목명</b></span>
  <div class="btn-group">
				 <select name="점검항목명" style="width:440px; height:30px;">
				  <option value="점검 분류에 해당하는 db값 가져오기" >점검 항목명</option>
					</select>

	</div>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>점검 상세 내용</b></span>
  <div class="btn-group">
  					<select name="점검상세내용" style="width:440px; height:30px;">
				  		<option value="점검 항목명에 해당하는 db값 가져오기">점검 상세 내용</option>
					</select>
	</div>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1" style="width:120px"><b>대안 조치 내용</b></span>
<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:440px; height:200px">
</div>
</form>

</body>
</html>