<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Legendary Motorsport</title>
<link rel="stylesheet" href="css/indexCars.css">
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>
<div class="grid-container">
	<header class="header">
		<img src="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" width=195px height=126px>
	</header>
	<section class="form">
		<form action="login" method="POST" id="formulario">
		<label>Usuario:</label>
		<input type="text" required id="usuario" name="usuario"><br><br>
		<label>Contraseña:</label>
		<input type="password" required id="contrasena" name="contrasena"><br>
		<input type="submit" value="Iniciar Sesión" id="boton"><br><br>
		<a id="boton" href="jsp/register.jsp">Aquí puede registrarse</a>
	</form>
	</section>
	<section class="img">
		<img src="https://i.bstr.es/highmotor/2018/10/coches-eco-baratos-12.jpg">
	</section>
	<section class="footer">
		<p>Esta empresa es totalmente legal y no se responsabiliza si encuentra a un empleado robando un coche</p>	
	</section>
</div>
</body>
</html>