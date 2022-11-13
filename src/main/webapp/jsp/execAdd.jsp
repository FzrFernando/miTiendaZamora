<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.accesoDatos.*"%>
<%@page import="com.jacaranda.logica.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExecAdd</title>
</head>
<body>
	<%
	HttpSession sesion=request.getSession();
	String isLogin = (String) sesion.getAttribute("isLogin");
	String usuario = (String) sesion.getAttribute("usuario");
	
	int idCategory = Integer.parseInt(request.getParameter("idCategory"));
	CarsDao cd = new CarsDao();
	CategoryDao cdao = new CategoryDao();
	Category c = cdao.findCategory(idCategory);
	Cars ca = new Cars(Integer.parseInt(request.getParameter("idCoche")), request.getParameter("name"),
			request.getParameter("description"),Double.parseDouble(request.getParameter("price")),c);
	if(cd.findCars(ca.getId())!=null){
		out.write("No se pudo añadir el coche porque ya existe uno con ese id!!");
	}
	if(cd.saveCars(ca)){
		out.write("Añadido con éxito");
	}
	%>
	
	<a href="main.jsp?id=<%=idCategory%>">Volver atrás</a>
</body>
</html>