<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
<form action="/system/nextstage.jsp" method="post">
<div class="input-group">
<span class="input-group-addon" id="basic-addon1">시스템 코드</span>
<input type="text" name="systemcode" class="form-control" aria-describedby="basic-addon1" style="width:200px">
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">시스템명</span>
<input type="text" name="systemname" class="form-control" aria-describedby="basic-addon1" style="width:200px">
</div>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">시스템 기능</span>
<input type="text" name="systemfunction" class="form-control" aria-describedby="basic-addon1" style="width:200px; height:150px">
</div>
</form>
</body>
</html>