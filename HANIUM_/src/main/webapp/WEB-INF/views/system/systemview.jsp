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
				<h1> �ý����ڻ� ���/��ȸ</h1>
			</header>
			<hr />
			 <div class="jumbotron">
					<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">�ý��� �ڵ�</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					    <span class="input-group-addon" id="basic-addon1">�ý��� ����</span>
					  <div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
					    �ý��۱��� <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">�ʼ� �ý���</a></li>
					    <li><a href="#">NON-�ʼ��ý���</a></li>
					  </ul>
					</div>
					<span class="input-group-addon" id="basic-addon1">�������</span>
					<div class="btn-group">
					  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
					    ������� <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="#">������� ����</a></li>
					    <li><a href="#">���ȱ�� ����</a></li>
					    <li><a href="#">��������� ����</a></li>
					  </ul>
					</div>
					</div>


		<div class="input-group">
					  <span class="input-group-addon" id="basic-addon1">�ý��� ��</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" style="width:250px">
					</div>
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">��ȸ </button>                                                                     
		
		</div>
                       
      	</div>
            		
          		

			
			<hr />
			
			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<tr>
						<th>�ý��� �ڵ�</th><th>�ý��۸�</th><th>�ý��� ����</th><th>��� ����</th>
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
	    <td>�ý����ڵ�</td>
	    <td>�ý��۸�</td>
	    <td>�ý��۱���</td>
	    <td>��� ����</td>
	    </tr>
	    <tr>
	    <td>1</td>
	    <td>RPS</td>
	    <td>���ڷ��������</td>
	    <td>�ʼ��ý���</td>
	    <td>������� ����</td>
	    </tr>
	    <tr>
	    <td>2</td>
	    <td>RPS</td>
	    <td>���ڷγð������</td>
	    <td>NON-�ʼ��ý���</td>
	    <td></td>
	    </tr>
		<tr>
	    <td>3</td>
	    <td>RPS</td>
	    <td>���ڷ���������</td>
	    <td>�ʼ��ý���</td>
	    <td>������ɼ���</td>
	    </tr>
		<tr>
	    <td>4</td>
	    <td>RPS</td>
	    <td>�����������</td>
	    <td>�ʼ��ý���</td>
	    <td>��������ɼ���</td>
	    </tr>
	    <tr>
	    <td>5</td>
	    <td>RPS</td>
	    <td>���ڷκ�������</td>
	    <td>�ʼ��ý���</td>
	    <td>���ȱ�ɼ���</td>
	    </tr>
	     <tr>
	    <td>7</td>
	    <td>RPS</td>
	    <td>�������ð���</td>
	    <td>�ʼ��ý���</td>
	    <td>���ȱ�ɼ���</td>
	    </tr><!-- ������° �� �� --> 
    </table>
	</div>
    <br/>
	<!--
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-->
</body>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">�ý��� ��� </button>
</body>
</html>