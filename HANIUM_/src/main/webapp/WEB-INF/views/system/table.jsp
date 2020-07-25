<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	
	 	<title>국가기반시설 정보보안 관리체계</title>

	</head>
<body>
	<div class="container">
			<header>
				<h1> 시스템자산 등록/조회</h1>
			</header>
			<hr />
			 <div class="jumbotron">
					<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">시스템 코드</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					    <span class="input-group-addon" id="basic-addon1">시스템 구분</span>
					  <div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
					    시스템구분 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">필수 시스템</a></li>
					    <li><a href="#">NON-필수시스템</a></li>
					  </ul>
					</div>
					<span class="input-group-addon" id="basic-addon1">기능유형</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
					    기능유형 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">안전기능 수행</a></li>
					    <li><a href="#">보안기능 수행</a></li>
					    <li><a href="#">비상대응기능 수행</a></li>
					  </ul>
					</div>
					</div>


		<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">시스템 명</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					</div>
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">조회 </button>                                                                     
		
		</div>
                       
      	</div>
            		
          		

			
			<hr />
			
			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<tr>
						<th>시스템 코드</th><th>시스템명</th><th>시스템 구분</th><th>기능 유형</th>
						</tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
							</tr>
						</c:forEach>
						
					</table>
				</form>
			</section>
			<div>
			
    <table border="1">
	    <tr><!--
	    <td> </td>
	    <td>시스템코드</td>
	    <td>시스템명</td>
	    <td>시스템구분</td>
	    <td>기능 유형</td>
	    </tr>
	    <tr>
	    <td>1</td>
	    <td>RPS</td>
	    <td>원자로제어계통</td>
	    <td>필수시스템</td>
	    <td>안전기능 수행</td>
	    </tr>
	    <tr>
	    <td>2</td>
	    <td>RPS</td>
	    <td>원자로냉각재계통</td>
	    <td>NON-필수시스템</td>
	    <td></td>
	    </tr>
		<tr>
	    <td>3</td>
	    <td>RPS</td>
	    <td>원자로정지계통</td>
	    <td>필수시스템</td>
	    <td>안전기능수행</td>
	    </tr>
		<tr>
	    <td>4</td>
	    <td>RPS</td>
	    <td>안전제어계통</td>
	    <td>필수시스템</td>
	    <td>비상대응기능수행</td>
	    </tr>
	    <tr>
	    <td>5</td>
	    <td>RPS</td>
	    <td>원자로보조계통</td>
	    <td>필수시스템</td>
	    <td>보안기능수행</td>
	    </tr>
	     <tr>
	    <td>7</td>
	    <td>RPS</td>
	    <td>안전감시계통</td>
	    <td>필수시스템</td>
	    <td>보안기능수행</td>
	    </tr><!-- 여섯번째 줄 끝 --> 
    </table>
	</div>
    <br/>
	<!--
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-->
</body>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">시스템 등록 </button>
</body>
</html>