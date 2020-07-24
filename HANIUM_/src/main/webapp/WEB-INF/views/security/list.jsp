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
<title>기술적 보안성 평가</title>
</head>
<body>
	<div>
      <%@include file="../allNav.jsp" %>
   </div>
   
   <form method="post" action="<%=request.getContextPath()%>/security/itemList">	
   
   <div class="container">
         <header>
            <h3> 기술적 보안성 평가</h3>
         </header>
         <hr />
         
         
         <!-- 검색창 -->
      <div class="jumbotron" style="height:190px">
      
      <p>기술적 보안성 평가 검색</p>         
	      <div class="input-group" >
	               <span class="input-group-addon" id="basic-addon1">CDA 유형</span>
	               <div class="btn-group">         
	                    <select id="cda_type" name="cda_mapping" style="height:30px;">
	                          <option>PC/Server</option>
	                          <option>A.1</option>
	                          <option>A.2</option>
	                          <option>A.3</option>
	                          <option>B.1</option>
	                          <option>B.2</option>
	                          <option>B.3</option>
	                        
	                    </select>
	               </div>
	               <span class="input-group-addon" id="basic-addon1">필수디지털자산명</span>
	               <div class="btn-group">
	                 <select id="groupList" name="inspect_group"  style="height:30px; width:auto; margin:0px">
	                     <option value="" selected>선택</option>
	                     <option value="pc" >pc/server/testtestestefnfwoeifnjkd</option>	                      
	                 </select>
	                 
	               </div>
	               <span class="input-group-addon" id="basic-addon1">보안성평가 여부</span>
	               <div class="btn-group" >
	                  <select id="insSelectList" name="inspect_group_list" style="height:30px;">
	                    <option value="" selected>선택</option>
	                    <option value="complete">완료</option>
	                    <option value="incomplete">미완료</option>
	                  </select>
	               </div>
	      	</div>
	         		<div align="right" style="margin-top:20px;">
	               		<button class="btn btn-primary" name="btnSearch" id="btnSearch">조회</button>
	               </div>   
      </div>
      
		      <section id="container">
		          <table class="table table-hover" id="listContent">
		             <tr>
		                <th class="col-md-1">no</th>
		                <th class="col-md-2">CDA 유형 / 코드</th>
		                <th class="col-md-5">필수디지털자산명</th>
		                <th class="col-md-1.5">보안성 평가 여부</th>
		                <th class="col-md-1.5">조회 / 등록</th>
		             </tr>
		             
		             <c:forEach items="${list}" var = "list">
		                <tr>
		                   <td><c:out value="${list.id}" /></td>
							<td><c:out value="${list.CDA_TYPE}" /> / <c:out value="${list.DA_CODE}" /></td>
							<td><c:out value="${list.DA_NAME}" /></td>
							<td><c:out value="${list.DA_FUNCTION}" /></td>
							<td><a href="itemList?cda_type=${list.CDA_TYPE}&cda_name=${list.DA_NAME}&cda_code=${list.DA_CODE}" >조회</a>
								/
								<a href="#" class="itemlistlink">등록</a><td>

		                </tr>
		             </c:forEach>
		          </table>
		          
		    </section>
		    
		    <div class="col-lg-12" id="ex2_Result1" ></div> 
        	<div class="col-lg-12" id="ex2_Result2" ></div> 

	    
		    
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
   </form>

<c:url var="getListURL" value="/security/list"></c:url>
<script>
$(".itemlistlink").click(function(){ 
	
	var str = ""
	var tdArr = new Array();	
	var checkBtn = $(this);
	
	var tr = checkBtn.parent().parent();
	var td = tr.children();
	
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	
	var no = td.eq(0).text();
	var cda_type = td.eq(1).text();
	var cda_name = td.eq(2).text();
	var eva_yn = td.eq(3).text();
	
	
	td.each(function(i){	
		tdArr.push(td.eq(i).text());
	});
	
	console.log("배열에 담긴 값 : "+tdArr);
	
	str +=	" * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
			", cda_type : <font color='red'>" + cda_type + "</font>" +
			", cda_name : <font color='red'>" + cda_name + "</font>" +
			", eva_yn : <font color='red'>" + eva_yn + "</font>";		
	
	$("#ex2_Result1").html(" * 클릭한 Row의 모든 데이터 = " + tr.text());		
	$("#ex2_Result2").html(str);

	var url = "${pageContext.request.contextPath}/security/list";
	url = url + "?cda_name=" + $('#cda_name').val();
	
	location.href = url;
	console.log(url);

});


</script> 
         
         

</body>
</html>
