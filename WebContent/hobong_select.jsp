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
<h2>호봉 정보 조회</h2>
<table border=1 id=tab5>
<tr>
<th>no</th>
<th>등급</th>
<th>급여</th>
</tr>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
		String sql="select * from hobong0524";
				pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		int i=0;
		String dunggub, salary;
		while(rs.next()){
			dunggub=rs.getString(1);
			salary=rs.getString(2);
			i++;
		%>
<tr>
<td><%=i %></td>
<td><%=dunggub+"급" %></td>
<td><%=salary %></td>
</tr>
<%}
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
</table>
</section>
<%@include file="footer.jsp" %>
</body>
</html>