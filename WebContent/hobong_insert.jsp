<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function check(){
	alert("등록되었습니다.")
	doc.submit;
	
	}
</script>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp" %>
<section>
<br>
<h2>인사관리 호봉 등록 화면</h2>
<hr>
<form name="form" method="post" action="#">
<table border=1 id=tab2>
<tr>
<th>직급</th>
<td><select name="dunggub" id=in2>
<option value="1" selected>1급</option>
<option value="2">2급</option>
<option value="3">3급</option>
<option value="4">4급</option>
<option value="5">5급</option>
</select></td>
</tr>
<tr>
<th>급여</th>
<td><input type="text" name="salary" id=in1></td>
</tr>
<tr>
<th colspan=2>
<input type="button" value="등록" onclick="check()" id=btn1>
<input type="button" value="취소" onclick="location.href='index.jsp'" id=btn1>
</th></tr>
</table>
</form>
<hr>
<h2></h2>
</section>
<%@include file="footer.jsp" %>
</body>
</html>