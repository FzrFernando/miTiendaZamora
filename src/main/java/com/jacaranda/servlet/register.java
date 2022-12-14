package com.jacaranda.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
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
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDao ud = new UserDao();
		boolean b = ud.addUser(new User(request.getParameter("user"),login.getMD5(request.getParameter("pass")),request.getParameter("name"),request.getParameter("apellido"),LocalDate.parse(request.getParameter("birth")),request.getParameter("sex"),false));
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
								);
					}
					
			response.getWriter().append("<!DOCTYPE html>\r\n"
					+ "<html>\r\n"
					+ "<head>\r\n"
					+ "    <title>Legendary Motorsport</title>\r\n"
					+ "<link rel=\"icon\" href=\"https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png\" type=\"image/x-icon\">\r\n"
					+ "<link rel=\"stylesheet\" href=\"./css/main.css\">\r\n"
					+ "</head>\r\n"
					+ "<body>\r\n"
					+ "<div class=\"grid-container\">\r\n"
					+ "	<header class=\"header\">\r\n"
					+ "		<img src=\"https://www.gran-turismo.com/gtsport/decal/5125101880501896704_1.png\"  width=\"195px\" height=\"126px\">\r\n"
					+ "	</header>\r\n"
					+ "	<section class=\"table\">\r\n"	
					+ "    <table border=\"1\">\r\n"
					+ "        <tr>\r\n"
					+ "            <th>Id</th>\r\n"
					+ "            <th>Name</th>\r\n"
					+ "            <th>Description</th>\r\n"
					+ "            <th>Precio</th>\r\n"
					+ "            <th>Categor??a</th>\r\n"
					+ "        </tr>\r\n"
					+ s
					+ "    </table>\r\n"
					+	"</section>\r\n"
					+ "		<section class=\"footer\">\r\n"
					+ " 		<p>Esta empresa es totalmente legal y no se responsabiliza si encuentra a un empleado robando un coche</p>\r\n"	
					+ "		</section>\r\n"
					+ "</div>\r\n"
					+ "</body>\r\n"
					+ "</html>");
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
					+ "				<div class=\"grid-container\">"
					+ "					<section class=\"imagen\">"
					+ "						<img id=image src=\"https://img.freepik.com/vector-gratis/fondo-error-404-rueda-coche-estilo-plano_23-2147761283.jpg\">"
					+ " 				</section>"	
					+ "					<section class=\"boton\">"
					+ " 					<a href=\"../index.jsp\" id=\"button\">Volver al index</a>"
					+ " 				</section>"	
					+ "				</div>\n"
					+ "			</body>\n"
					+ "			</html>");				
		}
		//doGet(request, response);
	}
	
//	public static String getMD5(String input) {
//		try {
//			MessageDigest md = MessageDigest.getInstance("MD5");
//			byte[] messageDigest = md.digest(input.getBytes());
//			BigInteger number = new BigInteger(1, messageDigest);
//			String hashtext = number.toString(16);
//
//			while (hashtext.length() < 32) {
//				hashtext = "0" + hashtext;
//			}
//			return hashtext;
//		} catch (NoSuchAlgorithmException e) {
//			throw new RuntimeException(e);
//		}
//	}

}
