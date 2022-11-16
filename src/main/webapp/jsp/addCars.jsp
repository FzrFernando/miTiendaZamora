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
<link rel="stylesheet" href="../css/actionCars.css">
</head>
<body>
<div class="grid-container">
	<header class="header">
		<img src="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" width=195px height=126px>
	</header>
	
	<%
	HttpSession sesion=request.getSession();
	CategoryDao cd = new CategoryDao();
	List<Category> lista = cd.returnCategory();
	%>
	<section class="form">
	<h1>Añade un Coche</h1>
		<form action="execAddCar.jsp">
			<label>IdCoche:</label>
			<input type="number" name="idCoche" id="idCoche" min="1" required><br><br>
			<label>Nombre:</label>
			<input type="text" name="name" id="name" required><br><br>
			<label>Descripción:</label>
			<input type="text" name="description" id="description" maxlength="50" required><br><br>
			<label>Precio:</label>
			<input type="number" step=".01"  name="price" id="price" required><br><br>
			<label>Category:</label>
			<select name="idCategory" id="idCategory" required="required">
				<%
				for (Category c : lista) {
				%>
				<option value="<%=c.getId()%>"><%=c.getNombre()%></option>
				<% 
				}
				%>
			</select>
			<br>
			<input type="submit" name="boton" id="boton" value="Enviar">
			<button>
				<a href="../login">Volver atrás</a>
			</button>
		</form>
	</section>
	<section class="img">
		<img src="https://siempreauto.com/wp-content/uploads/sites/9/2020/10/Bronco_4dr_01-e1611608223382.jpg?quality=80&strip=all">
	</section>
	<section class="footer">
		<p>Esta empresa es totalmente legal y no se responsabiliza si encuentra a un empleado robando un coche</p>	
	</section>
</div>
</body>
</html>