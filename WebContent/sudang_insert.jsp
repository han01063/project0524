<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function check(){
	var doc=document.form;
	if(doc.name.value==""){
	alert("성명이 입력되지 않았습니다.")
	doc.name.focus();
	return false;
	}
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
<h2>수당정보 등록</h2>
<hr>
<form name="form" method="post" action="#">
<table border=1 id=tab3>
<tr>
<th>사원번호</th>
<td><input type="text" name="id" id=in1></td>
<th>이름</th>
<td><input type="text" name="name" id=in1></td>
</tr>
<tr>
<th>가족수당</th>
<td><input type="text" name="gajok" id=in1></td>
<th>직책수당</th>
<td><input type="text" name="jikchak" id=in1></td>
</tr>
<tr>
<th>근속수당</th>
<td><input type="text" name="gunsok" id=in1></td>
</tr>
<tr>
<th>기타수당</th>
<td colspan=4><input type="text" name="gitasudang" id=in1></td>
</tr>
<tr>
<th colspan=4>
<input type="button" value="취소" onclick="location.href='index.jsp'" id=btn1>
<input type="button" value="등록" onclick="check()" id=btn1>
</th></tr>
</table>
</form>
<hr>
<h2></h2>
</section>
<%@include file="footer.jsp" %>
</body>
</html>