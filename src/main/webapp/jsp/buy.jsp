<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.logica.*"%>
<%@ page import="com.jacaranda.accesoDatos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy</title>
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
<link rel="stylesheet" href="../css/buy.css">
</head>
<body>
<div class="grid-container">
	<header class="header">
		<img src="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" width=195px height=126px>
	</header>
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
	<section class="middle">
		<h1>Compra con éxito</h1>
	</section>
	<section class="footer">
		<p>Esta empresa es totalmente legal y no se responsabiliza si encuentra a un empleado robando un coche</p>	
	</section>
</div>
</body>
</html>