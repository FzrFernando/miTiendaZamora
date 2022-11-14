<%@page import="com.jacaranda.accesoDatos.CategoryDao"%>
<%@page import="com.jacaranda.logica.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Cars</title>
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>
	<h1>Añade un Coche</h1>
	
	<%
	HttpSession sesion=request.getSession();
	CategoryDao cd = new CategoryDao();
	List<Category> lista = cd.returnCategory();
	%>
	
	<form action="execAddCar.jsp">
		<label>IdCoche</label>
		<input type="number" name="idCoche" id="idCoche" min="1" required><br>
		<label>Nombre</label>
		<input type="text" name="name" id="name" required><br>
		<label>Descripción</label>
		<input type="text" name="description" id="description" maxlength="50" required><br>
		<label>Precio</label>
		<input type="number" step=".01"  name="price" id="price" required><br>
		<label>Category</label>
		<select name="idCategory" id="idCategory" required="required">
			<%
			for (Category c : lista) {
			%>
			<option value="<%=c.getId()%>"><%=c.getNombre()%></option>
			<% 
			}
			%>
		</select>
		<input type="submit" name="boton" id="boton" value="Enviar">
		<button>
			<a href="main.jsp">Volver atrás</a>
		</button>
	</form>
</body>
</html>