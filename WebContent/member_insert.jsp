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
<%@include file="DBConn.jsp" %>
<br>
<h2>인사관리 사원등록 화면</h2>
<hr>
<form name="form" method="post" action="#">
<table border=1 id=tab1>
<tr>
<th>사원번호(자동생성)</th>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
		String sql="select id from info0524 order by id desc";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		rs.next();
		int id=rs.getInt(1);
	%>


<td><input type="text" name="id" id=in1 value="<%=id+1 %>">마지막 번호+1</td>
	<% 
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
</tr>

<tr>
<th>사원명</th>
<td><input type="text" name="name" id=in1></td>
</tr>
<tr>
<th>소속부서</th>
<td><select name="dept" id=in2>
<option value="10" selected>인사부</option>
<option value="20">기획부</option>
<option value="30">홍보부</option>
<option value="40">영업부</option>
<option value="50">경리부</option>
</select></td>
</tr>
<tr>
<th>직급</th>
<td>  <input type="radio" value="1" name="position"> 1급
 <input type="radio" value="2" name="position"> 2급
 <input type="radio" value="3" name="position"> 3급
 <input type="radio" value="4" name="position"> 4급
 <input type="radio" value="5" name="position"  checked> 5급</td>
</tr>
<tr>
<th>직책</th>
<td><input type="text" name="duty" id=in1></td>
</tr>
<tr>
<th>연락처</th>
<td><input type="text" name="phone" id=in1></td>
</tr>
<tr>
<th>주소</th>
<td><input type="text" name="address" id=in1></td>
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