<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Legendary Motorsport</title>
<link rel="stylesheet" href="css/index.css">
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>
	<form action="login" method="POST" id="formulario">
		<p id="login">Legendary Motorsport</p>
		<label>Usuario</label>
		<input type="text" required id="usuario" name="usuario"><br>
		<label>Contraseña</label>
		<input type="password" required id="contrasena" name="contrasena"><br>
		<input type="submit" value="Iniciar Sesión" id="boton"><br>
		<a href="jsp/register.jsp">Aquí puede registrarse</a>
	</form>
</body>
</html>