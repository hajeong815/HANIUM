<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <head>
    <script>
    function checkboxArr() {
	var checkArr = [];
	
	$("input[name='check']:checked").each(function(i)) {
        checkArr.push($(this).val());     
    }
 
    $.ajax({
        url: 'check'
        , type: 'post'
        , dataType: 'text'
        , data: {
            valueArrDA: checkArr
        }
    });

	
</script>
</head>

<body>

<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">SSEP 기능 수행</span>
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					O
					  </label>
					  <br/>
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					X
					  </label>
					  </div>
					  
					  <span class="input-group-addon" id="basic-addon1">사이버 공격 침해 CDA 악영향 여부</span>
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					O
					  </label>
					  <br/>
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					X
					  </label>
					  </div>
					  </div>
<div class="input-group">					  
					  <span class="input-group-addon" id="basic-addon1">CDA와 통신 연결성 존재</span>
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					O
					  </label>
					  <br/>
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					X
					  </label>
					  </div>
					  
					  <span class="input-group-addon" id="basic-addon1">CDA 유지 보수 기능 제공</span>
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					O
					  </label>
					  <br/>
					  <input class="form-check-input" type="checkbox" name="check" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					X
					  </label>
					  </div>
					
</div>



</body>

</html>