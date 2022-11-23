<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.CategoryDao"%>
<%@page import="com.jacaranda.logica.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
<title>Cart</title>
</head>
<body>
	<%
	HttpSession sesion=request.getSession();
	int idCar = Integer.parseInt(request.getParameter("name"));
	int cant = Integer.parseInt(request.getParameter("cant"));
	%>
	<table border="1">
		<tr>
			<th>IdCar</th>
			<th>Name</th>
			<th>Price</th>
			<th>Amount</th>
		</tr>
	</table>	
	<form action="../login" method="post">
		<input type="hidden" name="nom" value="<%=sesion.getAttribute("user")%>">
		<input type="hidden" name="pass" value="<%=sesion.getAttribute("pass")%>">
		<input type="submit" value="Volver">
	</form>
</body>
</html>