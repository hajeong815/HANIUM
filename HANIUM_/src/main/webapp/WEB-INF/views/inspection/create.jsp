<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String contextPath = request.getContextPath();
%>

<body>
<div class="input-group">
	<span class="input-group-addon" id="basic-addon1">CDA 유형</span>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">보안영역</span>
  <select name="insGroup">
       <c:forEach var="group" items="${groupList}">
           <option value="${group.code_type_name}">${group.code_type_name}</option>
       </c:forEach>
   </select>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">점검분야</span>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">점검 내용</span>
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">대안 조치 내용</span>
<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:200px; height:150px">
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">보안성평가 여부(y/n)</span>
</div>
</body>
</html>