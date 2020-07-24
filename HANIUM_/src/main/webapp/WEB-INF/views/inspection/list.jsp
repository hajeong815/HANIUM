<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
   <head>
   
   <!-- bootstrap -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
      
<meta charset="UTF-8">
<title>기술적 보안조치항목 조회</title>
</head>

<body>
   
   <div>
      <%@include file="../allNav.jsp" %>
   </div>
   
   <div class="container">
         <header>
            <h3> 기술적 보안조치항목 등록/조회</h3>
         </header>
         <hr />
         
      <!-- 검색창 -->
      <div class="jumbotron">
      
      <p>기술적 보안조치 항목 검색</p>         
	      <div class="input-group" >
	               <span class="input-group-addon" id="basic-addon1">CDA 유형</span>
	               <div class="btn-group">         
	                    <select id="cda_type" name="cda_mapping" style="height:30px;">
	                          <option>PC/Server</option>
	                          <option>A.1</option>
	                          <option>A.2</option>
	                    </select>
	               </div>
	                <span class="input-group-addon" id="basic-addon1">점검 분류</span>
	               <div class="btn-group">
	                 <select id="groupList" name="inspect_group"  style="height:30px;" onchange="categoryChange(this)">
	                     <option value="" selected>점검 분류 선택</option>
	                      <c:forEach var="group" items="${groupList}">
	                          <option value="${group.code_type_no}">${group.code_type_name}</option>
	                      </c:forEach>
	                  </select>
	                 
	               </div>
	               <span class="input-group-addon" id="basic-addon1">점검 항목</span>
	               <div class="btn-group">
	                   <select id="insSelectList" name="inspect_group_list" style="width:440px; height:30px;">
	                    <option value="" >점검 항목명</option>
	                  </select>
	               </div>
	      	</div>
	         		<div align="right">
	               		<button class="btn btn-primary" name="btnSearch" id="btnSearch">조회</button>
	               </div>   
      </div>
         
         
	<section id="container">
          <table class="table table-hover">
             <tr>
                <th>no</th>
                <th class="col-md-0.5">CDA 유형</th>
                <th class="col-md-1">점검 분류</th>
                <th class="col-md-2">점검 항목명</th>
                <th class="col-md-3.5">점검 상세 내용</th>
                <th class="col-md-4">대안 조치 내용</th>
             </tr>
             
             <c:forEach items="${list}" var = "vo">
                <tr>
                   <td><c:out value="${vo.id}" /></td>
                   <td><c:out value="${vo.cda_mapping}" /></td>
                   <td><c:out value="${vo.inspect_group}" /></td>
                   <td><c:out value="${vo.inspect_group_list}" /></td>
                   <td><c:out value="${vo.content}" /></td>
                   <td><c:out value="${vo.alter_measure}" /></td>
                </tr>
             </c:forEach>
          </table>
    </section>
         
         <!-- 페이지 -->
         <nav>
              <ul class="pagination" >
                <li>
                  <a href="#" aria-label="Previous">
                 <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                   <li><a href="#">1</a></li>
                   <li><a href="#">2</a></li>
                   <li><a href="#">3</a></li>
                   <li><a href="#">4</a></li>
                   <li><a href="#">5</a></li>
                   <li>
                        <a href="#" aria-label="Next">
                          <span aria-hidden="true">&raquo;</span>
                        </a>
                   </li>
                   
                
              </ul>
              
              <!-- 등록버튼(모달창) -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="float: right;">
               등록
            </button>
            
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">기술적 보안조치 항목 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <%@include file="create.jsp" %>
                  </div>
                  
                </div>
              </div>
            </div>      

   <hr />
   </div>

</body>

<c:url var="getListURL" value="/inspection/list"></c:url>
<script>

$(document).on('click', '#btnSearch', function(e) {
	e.preventDefault();
	var url = "${pageContext.request.contextPath}/inspection/list";
	url = url + "?cda_mapping=" + $('#cda_type').val();
	url = url + "&inspect_group=" + $('#groupList').val();
	url = url + "&inspect_group_list=" + $('#insSelectList').val();
	
	location.href = url;
	console.log(url);
});

function categoryChange(e) {
   var target = document.getElementById("insSelectList");
   
   target.options.length = 0;
   
   <c:forEach var="vo" items="${insList}" varStatus="status">
      var sel = document.getElementById("groupList");
      var selectedVal = sel.options[sel.selectedIndex].value;
      var voVal = ${vo.code_type_no};
      
      if (selectedVal == voVal) {
         var opt = document.createElement("option");
         opt.value = '${vo.id}';
         opt.innerHTML = '${vo.item}';
         target.appendChild(opt);
      }
   </c:forEach>
}


function showDetail2(e) {
	   console.log(e);
	   
	   <c:forEach var="vo" items="${insList}">
	      var sel = document.getElementById("insSelectList2");
	      var selectedVal = sel.options[sel.selectedIndex].value;
	      var voVal = ${vo.id};
	      
	      if (selectedVal == voVal) {
	         document.getElementById("detailInput2").innerHTML = '${vo.content}';
	      }
	   </c:forEach>
	}


function categoryChange2(e) {
   var target = document.getElementById("insSelectList2");
   
   target.options.length = 0;
   
   <c:forEach var="vo" items="${insList}" varStatus="status">
      var sel = document.getElementById("groupList2");
      var selectedVal = sel.options[sel.selectedIndex].value;
      var voVal = ${vo.code_type_no};
      
      if (selectedVal == voVal) {
         var opt = document.createElement("option");
         opt.value = '${vo.id}';
         opt.innerHTML = '${vo.item}';
         target.appendChild(opt);
      }
      
      <c:if test="${status.first}">
         document.getElementById("detailInput2").innerHTML = '${vo.content}';
      </c:if>
   </c:forEach>
}


</script>

</html>
