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
	               <span id="basic-addon1" style="font-weight:bold">CDA 유형</span>
	               <div class="btn-group" style="height:30px; margin-left:15px; margin-right:30px">         
	                    <input type="text" id="cda_type" value="pc/server" style="background-color:ffffff; border:1px solid; height:30px; width:100px" readonly disabled></input>
	               </div>
	               
	               <span id="basic-addon1" style="font-weight:bold">필수디지털자산코드</span>
	               <div class="btn-group" style="height:30px; margin-left:15px; margin-right:30px">
	                 <input type="text" id="cda_code" value="sdfs" style="background-color:ffffff; border:1px solid; height:30px; width:120px" readonly disabled></input>	                 
	               </div>
	               
	               <span id="basic-addon1" style="font-weight:bold">필수디지털자산명</span>
	               <div class="btn-group" style="height:30px; margin-left:15px; margin-right:30px">
	                  <input type="text" id="cda_name" value="sdfesdfefsfsfdsdfsfsdfsdfsfsdfsf" style="background-color:ffffff; border:1px solid; height:30px; width:350px" readonly disabled></input>
	               </div>
	      </div>
	      	      		   
	      <div class="input-group" style="margin-top:20px">
	      		   <span id="basic-addon1" style="font-weight:bold">점검 내용</span>
	               <div class="btn-group" style="margin-left:15px; margin-right:30px"> 
	               		<textarea class="form-control" name="content" aria-describedby="basic-addon1" style="width:400px; height:200px; overflow: scroll; word-wrap: break-word;" ></textarea>	               		        
	      		   </div>
	              
	               
	               <span id="basic-addon1" style="font-weight:bold">점검 주기</span>
	               <div class="btn-group" style="margin-left:15px; margin-right:30px">                       
	                    <input type="text" id="cda_type" value="pc/server" style="background-color:ffffff; border:1px solid; height:30px; width:100px" readonly disabled></input>
	               </div>
	               
	     </div>
	      	      
	     <div class="input-group" style="margin-top:20px;">
	      		   <span id="basic-addon1" style="font-weight:bold">보완요청사항</span>
	               <div class="btn-group" style="margin-left:15px; margin-right:30px">         
	                    <input type="text" id="cda_type" value="보완요청사항" style="background-color:ffffff; border:1px solid; height:200px; width:500px" readonly disabled></input>
	               </div>
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
		             
		             <c:forEach items="${list}" var = "list">
		                <tr>
		                    <td><c:out value="${list.id}" /></td>
							<td><c:out value="${list.system_CODE}" /></td>
							<td><c:out value="${list.system_NAME}" /></td>
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