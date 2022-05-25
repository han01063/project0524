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
<h2>수당 정보 조회</h2>
<table border=1 id=tab6>
<tr>
<th>no</th>
<th>사원번호</th>
<th>이름</th>
<th>가족수당</th>
<th>직책수당</th>
<th>근속수당</th>
<th>기타수당</th>
<th>급여합계</th>
<th>구분</th>
</tr>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
	 	String sql="select info0524.id,name,to_char(gajok,'999,999,999'),to_char(jikchak,'999,999,999'),to_char(gunsok,'999,999,999'),to_char(gitasudang,'999,999,999'),to_char((gajok+jikchak+gunsok+gitasudang),'999,999,999') from info0524,sudang0524 where info0524.id=sudang0524.id";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		String id,name,gajok,jikchak,gunsok,gitasudang;
		int i=0;
		while(rs.next()){
			id=rs.getString(1);
			name=rs.getString(2);
			gajok=rs.getString(3);
			jikchak=rs.getString(4);
			gunsok=rs.getString(5);
			gitasudang=rs.getString(6);
			String total=rs.getString(7);
			i++; 
			%>
<tr>
<td id=td1><%=i %></td>
<td id=td1><%=id %></td>
<td id=td1><%=name %></td>
<td id=td2><%=gajok %></td>
<td id=td2><%=jikchak %></td>
<td id=td2><%=gunsok %></td>
<td id=td2><%=gitasudang %></td>
<td id=td2><%=total %></td>
<td id=td1><a href="#">수정</a> / <a href="#">삭제</a></td>
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