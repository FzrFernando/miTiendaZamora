<%@page import="com.jacaranda.accesoDatos.CarsDao"%>
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
<link rel="stylesheet" href="../css/cart.css">
<title>Cart</title>
</head>
<body>
<div class="grid-container">
	<header class="header">
		<img src="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" width=195px height=126px>
	</header>
	<%
	HttpSession sesion=request.getSession();
	String user=(String)sesion.getAttribute("usuario");
	int idCar = Integer.parseInt(request.getParameter("id"));
	int cant = Integer.parseInt(request.getParameter("cant"));
	Cart c = (Cart) sesion.getAttribute("cart");
	if (sesion.getAttribute("cart") == null) {
		c = new Cart();
		sesion.setAttribute("cart", c);
	}
	ItemCart ic = new ItemCart(idCar, cant);
	c.addCart(ic);
	CarsDao cd = new CarsDao();
	%>
	<section class="form">
		<table border="1">
			<tr>
				<th>IdCar</th>
				<th>Name</th>
				<th>Price</th>
				<th>Amount</th>
			</tr>
			<% 
			for (ItemCart it : c.getCart()){
			%>
			<tr>
				 <td><%=it.getIdCar()%></td>
				 <td><%=cd.findCars(it.getIdCar()).getNombre()%></td>
				 <td><%=cd.findCars(it.getIdCar()).getPrecio()%></td>
				 <td><%=it.getCant()%></td>
			</tr>
			<% 
			}		
			%>
		</table>
	</section>	
	<section class="button">
			<form action="../login" method="post">
				<input type="hidden" name="user" value="<%=sesion.getAttribute("usuario")%>">
				<input type="hidden" name="pass" value="<%=sesion.getAttribute("contrasena")%>">
				<input type="submit" value="Volver">
			</form>
		<button>
			<a href="buy.jsp">Comprar</a>
		</button>
	</section>
	<section class="footer">
		<p>Esta empresa es totalmente legal y no se responsabiliza si encuentra a un empleado robando un coche</p>	
	</section>
</div>
</body>
</html>