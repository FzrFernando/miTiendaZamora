<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.*" %>
<%@page import="com.jacaranda.logica.*" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Legendary Motorsport</title>
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>
	<table border="1">
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>Description</td>
			<td>Listar Coches</td>
		</tr>
		<%
		CategoryDao cd = new CategoryDao();
		List<Category> category = cd.returnCategory();
		for (Category c : category) {
		%>
		<tr>
			<td><%=c.getId()%></td>
			<td><%=c.getNombre()%></td>
			<td><%=c.getDescripcion()%></td>
			<td><a href="mainCoches.jsp?id=<%=c.getId()%>">Ver Coches</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>