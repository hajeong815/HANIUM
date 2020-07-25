<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<script>
  function random()
 {alert('working');}
</script>
</head>
<body>
<!--  request.setCharacterEncoding("UTF-8");
String systemcode = request.getParameter("systemcode"); 
String systemname = request.getParameter("systemname"); 
String systemf = request.getParameter("systemfunction"); 
  -->

<div class="input-group">
<span class="input-group-addon" id="basic-addon1">시스템 코드</span>
<input type="text" class="form-control" aria-describedby="basic-addon" style="width:200px">
</div>
<div class="input-group">
<span class="input-group-addon" id="basic-addon1">시스템명</span>
<input type="text" class="form-control" aria-describedby="basic-addon1" style="width:200px">
<!--  systemname %> -->
</div>
<div>
					  <span class="input-group-addon" id="basic-addon4">SSEP지원</span>
					<div class="btn-group">
					  <select id= SSEP onchange="random()">
					  <option>원자로</option>
                      </select>
                      </div>
</div>                      
<div class="input-group">
				<span class="input-group-addon" id="basic-addon2">안전등급</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">안전</a></li>
					    <li><a href="#">비안전</a></li>
					  </ul>
					</div>
</div>
<div class="input-group">
					  <span class="input-group-addon" id="basic-addon3">통신 연결 시스템</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">원자로 제어 계통</a></li>
					    <li><a href="#">원자로 냉각 계통</a></li>
					  </ul>
					</div>
</div>
<div class="input-group">
					  <span class="input-group-addon" id="basic-addon5">기능유형</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    선택 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">안전</a></li>
					    <li><a href="#">보안</a></li>
					    <li><a href="#">비상대응</a></li>
					  </ul>
					</div>
</div>
</body>
</html>