<%@page import="com.dao.StudentDao"%>
<%@page import="com.hibernate.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	List<Student> list=StudentDao.getAllStudent();
%>
<table border="5" cellpadding="10px" cellspacing="10px" width="100%">
<tr>
	<th>ID</th>
	<th>FIRST NAME</th>
	<th>LAST NAME</th>
	<th>EMAIL</th>
	<th>MOBILE</th>
	<th>EDIT</th>
	<th>DELETE</th>
	
</tr>
<%
		for(Student s:list){
%>
<tr>
	<td><%=s.getId() %></td>
	<td><%=s.getFname() %></td>
	<td><%=s.getLname() %></td>
	<td><%=s.getEmail() %></td>
	<td><%=s.getMobile() %></td>
	<td>
		<form  method="post" name="edit" action="ActionController">
			<input type="hidden" name="id" value="<%=s.getId() %>" >
			<input type="submit" name="action" value="EDIT">
			</form>
	</td>
	<td>
		<form  method="post" name="delete" action="ActionController">
			<input type="hidden" name="id" value="<%=s.getId() %>" >
			<input type="submit" name="action" value="DELETE">
			</form>
	</td>
<%
		}
%>

</table>
<a href="insert.jsp">Add New Student</a>
</body>
</html>