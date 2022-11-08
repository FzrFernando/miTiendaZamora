<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="icon" href="https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png" type="image/x-icon">
</head>
<body>
	<form action="../register" method="POST">
		<label>Usuario</label>
		<input type="text" id="user" name="user" required><br>
		<label>Contraseña</label>
		<input type="password" id="pass" name="pass"><br>
		<label>Nombre</label>
		<input type="text" id="name" name="name"><br>
		<label>Apellido</label>
		<input type="text" id="apellido" name="apellido"><br>
		<label>Fecha de nacimiento</label>
		<input type="date" id="birth" name="birth"><br>
		<label>Elija su género</label>
		<input type="radio" id="sex" name="sex" value="H">Hombre
		<input type="radio" id="sex" name="sex" value="M">Mujer<br>
		<input type="submit" id="button" name="button" value="Registrarse">
	</form>
</body>
</html>