<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp" %>
<section>
<%@include file="DBConn.jsp" %>
<br>
<h2>사원 정보 조회</h2>
<table border=1 id=tab4>
<tr>
<th>no</th>
<th>사원번호</th>
<th>사원명</th>
<th>직급</th>
<th>직책</th>
<th>연락처</th>
<th>소속부서</th>
<th>주소</th>
</tr>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
		String sql="select id,name,dept,position,duty,phone,address from info0524";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		String id, name, dept, position, duty, phone, address;
		int i=0;
		while(rs.next()){
			id=rs.getString(1);
			name=rs.getString(2);
			dept=rs.getString(3);
			position=rs.getString(4);
			duty=rs.getString(5);
			phone=rs.getString(6);
			address=rs.getString(7);
			i++;
			%>
<tr>
<td><%=i %></td>
<td><%=id %></td>
<td><%=name %></td>
<td><%=dept %></td>
<td><%=position %></td>
<td><%=duty %></td>
<td><%=phone %></td>
<td><%=address %></td>
</tr>
<%
	}
	}catch(SQLException e){
		e.printStackTrace();
	}
	%>

</table>
</section>
<%@include file="footer.jsp" %>
</body>
</html>