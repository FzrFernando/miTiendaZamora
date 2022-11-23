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
	CategoryDao cd = new CategoryDao();
	List<Category> lista = cd.returnCategory();
	%>
	<form action="">
		<input type="submit" name="boton" id="boton" value="Comprar">
	</form>
</body>
</html>