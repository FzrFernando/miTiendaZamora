<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="com.jacaranda.accesoDatos.*"%>
<%@page import="com.jacaranda.accesoDatos.UserDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy</title>
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>
	<%
		HttpSession sesion = request.getSession();
		String user = (String) sesion.getAttribute("usuario");
		Cart c = (Cart) sesion.getAttribute("cart");
		User u = UserDao.findUser(user);
		boolean buy=false;
		for (ItemCart ic : c.getCart()){
			Cars ca = CarsDao.findCars(ic.getIdCar());
			int stock = ca.getStock()-ic.getCant();
			ca.setStock(stock);
			double price = ca.getPrecio() * ic.getCant();
			Purchase pu = new Purchase(u,ca,ic.getCant(),price);
			buy = PurchaseDao.addPurchase(pu);
			boolean cars = CarsDao.addCars(ca);
		}
	%>
</body>
</html>