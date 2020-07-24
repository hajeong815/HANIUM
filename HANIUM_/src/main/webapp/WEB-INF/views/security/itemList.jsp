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
<title>기술적 보안성 평가 상세 조회</title>
</head>
<body>

<%

request.setCharacterEncoding("euc-kr");

String cda_type = request.getParameter("cda_type");
System.out.println(cda_type);
String cda_name = request.getParameter("cda_name");
String cda_code = request.getParameter("cda_code");
System.out.println(cda_code);

%>

	<div>
      <%@include file="../allNav.jsp" %>
    </div>
    
   
	  <div class="container">
	         <header>
	            <h3> 기술적 보안성 평가 상세 조회</h3>
	         </header>
	         <hr />
	         
	  <!-- 검색창 -->
      <div class="jumbotron" style="height:auto;">
      
	      <div class="input-group" >
	               <span class="input-group-addon" id="basic-addon1">CDA 유형</span>
	               <div class="btn-group" style="height:30px; margin-left:15px; margin-right:30px">         
					<input type="text" id="cda_type" value="<%=cda_type %>" style="background-color:ffffff; border:1px solid; height:30px; width:120px" readonly disabled>
	                    
	               </div>
	               
	               <span class="input-group-addon" id="basic-addon1">필수디지털자산코드</span>
	               <div class="btn-group" style="height:30px; margin-left:15px; margin-right:30px">
	                 <input type="text" id="cda_code" value="<%=cda_code %>" style="background-color:ffffff; border:1px solid; height:30px; width:120px" readonly disabled></input>	                 
	               </div>
	               
	               <span class="input-group-addon" id="basic-addon1">필수디지털자산명</span>
	               <div class="btn-group" style="height:30px; margin-left:15px; margin-right:30px">
	                  <input type="text" id="cda_name" value="<%=cda_name%>" style="background-color:ffffff; border:1px solid; height:30px; width:200px" readonly disabled>
	               </div>
	      </div>
	      	      		   
	      	<div class="input-group" style="padding:5px;">
					<span class="input-group-addon" id="basic-addon1" style="width:150px">점검 내용</span>		
					<input type="text" value="<c:out value="${CONTENT}" />" class="form-control" aria-describedby="basic-addon1" style="width:900px; height:150px">
			</div>
	              

	      	      
	     <div class="input-group" style="padding:5px;">
	      		   <span class="input-group-addon" id="basic-addon1" style="width:150px">보완요청사항</span>
	      		   <input type="text" class="form-control" aria-describedby="basic-addon1" style=" width:900px;height:150px">
<!-- 	               <div class="btn-group" style="margin-left:15px; margin-right:30px">         
	                    <input type="text" id="cda_type" style="background-color:ffffff; border:1px solid; height:200px; width:500px"></input>
	               </div> -->
	     </div>
	     
	    <div class="input-group" style="padding:5px;">
	               <span class="input-group-addon" id="basic-addon1" style="width:110px">점검 주기(M, 숫자로만 입력)</span>              
	               <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:100px">      
	               <!-- <input type="text" id="cda_type" value="pc/server" style="background-color:ffffff; border:1px solid; height:30px; width:100px"></input>     -->
	     </div>
	      
	      
	     <div align="right" style="margin-top:20px;">
	               	<button class="btn btn-primary" name="btnSearch" id="btnSearch" style="margin-right:20px">수정</button>
	               	<button class="btn btn-primary" name="btnDelete" id="btnDelete">삭제</button>
	     </div>  
	  </div>	 
	      
	      <section id="container">
		          <table class="table table-condensed">
		             <tr>
		                <th class="col-md-2">점검 분류</th>
		                <th class="col-md-5">점검 상세 내용</th>
		                <th class="col-md-5">대안 조치 내용</th>
		             </tr>
		             
		             <c:forEach items="${SecurityEvalist}" var = "list">
		                <tr>
		                    <td><c:out value="${list.COMMENT}" /></td>
							<td><c:out value="${list.CONTENT}" /></td>
							<td><c:out value="${list.COMMENT}" /></td>
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
           </nav>
	               
      </div>
     
</body>
</html>
