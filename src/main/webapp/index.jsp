<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Legendary Motorsport</title>
</head>
<body>
<%HttpSession sesion=request.getSession();
sesion.invalidate();%>
<form action="" method="" id="formulario">
		<p id="login">SuperLigue</p>
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