<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Legendary Motorsport</title>
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>

<form action="../Coches/login" method="POST" id="formulario">
		<p id="login">Legendary Motorsport</p>
		<div id="soloUsuario">
			Usuario<br>
			<input type="text" required id="usuario" name="usuario">
		</div>
		
		<br><br>
		
		<div id="soloContrasena">
			Contraseña<br>
			<input type="password" required id="contrasena" name="contrasena">
		</div>
		<input type="submit" value="Iniciar Sesión" id="boton">
	</form>
</body>
</html>