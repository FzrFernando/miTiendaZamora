package com.jacaranda.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.accesoDatos.CarsDao;
import com.jacaranda.accesoDatos.UserDao;
import com.jacaranda.logica.Cars;
import com.jacaranda.logica.User;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("usuario");
		String pass = getMD5(request.getParameter("contrasena")) ;
		UserDao ud = new UserDao();
		boolean b = ud.validateUser(user, pass);
		User u=ud.findUser(user);
		if (b) {
			CarsDao cd=new CarsDao();
			List<Cars>lista=cd.getCars();
			StringBuilder s=new StringBuilder();
					for (Cars i:lista) {
						s.append("<tr>"
								+"<td>"+i.getId()+"</td>"
								+"<td>"+i.getNombre()+"</td>"
								+"<td>"+i.getDescripcion()+"</td>"
								+"<td>"+i.getPrecio()+"</td>"
								+"<td>"+i.getId_categoria().getNombre() + "</td>"
								);
					}
			if (u.isAdmin()) {
				response.getWriter().append("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "    <title>Legendary Motorsport</title>\r\n"
						+ "<link rel=\"icon\" href=\"https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png\" type=\"image/x-icon\">\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "  <button><a href=\"./jsp/addCars.jsp\">Añadir Coche</a></button>\r\n"
						+ "    <table border=\"1\">\r\n"
						+ "        <tr>\r\n"
						+ "            <th>Id</th>\r\n"
						+ "            <th>Name</th>\r\n"
						+ "            <th>Description</th>\r\n"
						+ "            <th>Precio</th>\r\n"
						+ "            <th>Categoría</th>\r\n"
						+ "        </tr>\r\n"
						+ s
						+ "    </table>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}
			else {
				response.getWriter().append("<!DOCTYPE html>\r\n"
						+ "<html>\r\n"
						+ "<head>\r\n"
						+ "    <title>Legendary Motorsport</title>\r\n"
						+ "<link rel=\"icon\" href=\"https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png\" type=\"image/x-icon\">\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "    <table border=\"1\">\r\n"
						+ "        <tr>\r\n"
						+ "            <th>Id</th>\r\n"
						+ "            <th>Name</th>\r\n"
						+ "            <th>Description</th>\r\n"
						+ "            <th>Precio</th>\r\n"
						+ "            <th>Categoría</th>\r\n"
						+ "        </tr>\r\n"
						+ s
						+ "    </table>\r\n"
						+ "</body>\r\n"
						+ "</html>");
			}
		}
		else {
			response.getWriter().append("<!DOCTYPE html>\n"
					+ "			<html>\n"
					+ "			<head>\n"
					+ "			<meta charset=\"UTF-8\">\n"
					+ "			<title>Error</title>\n"
					+ "			<link rel=\"stylesheet\" href=\"css/errorLogin.css\">\n"
					+ "			<link rel=\"icon\" href=\"https://cdn-icons-png.flaticon.com/512/5219/5219070.png\" type=\"image/x-icon\">\n"
					+ "			</head>\n"
					+ "			<body>\n"
					+ "				<div id=\"contain\">\n"
					+ "					<img id=image src=\"https://img.freepik.com/vector-gratis/fondo-error-404-rueda-coche-estilo-plano_23-2147761283.jpg\" height=\"30%\" width=\"30%\">\n"
					+ "					<a href=\"../index.jsp\" id=\"button\">Volver al index</a>\n"
					+ "				</div>\n"
					+ "			</body>\n"
					+ "			</html>");			
		}
		//doGet(request, response);
	}

	public static String getMD5(String input) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(input.getBytes());
			BigInteger number = new BigInteger(1, messageDigest);
			String hashtext = number.toString(16);

			while (hashtext.length() < 32) {
				hashtext = "0" + hashtext;
			}
			return hashtext;
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e);
		}
	}
}
