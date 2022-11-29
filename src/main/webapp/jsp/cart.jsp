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
<title>Cart</title>
</head>
<body>
	<%
	HttpSession sesion=request.getSession();
	int idCar = Integer.parseInt(request.getParameter("name"));
	int cant = Integer.parseInt(request.getParameter("cant"));
	Cart c = new Cart();
	c = (Cart) sesion.getAttribute("cart");
	ItemCart ic = new ItemCart(idCar, cant);
	c.addCart(ic);
	CarsDao cd = new CarsDao();
	%>
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
	<form action="../login" method="post">
		<input type="hidden" name="nom" value="<%=sesion.getAttribute("usuario")%>">
		<input type="hidden" name="pass" value="<%=sesion.getAttribute("password")%>">
		<input type="submit" value="Volver">
	</form>
	<button>
		<a href="buy.jsp">Comprar</a>
	</button>
</body>
</html>