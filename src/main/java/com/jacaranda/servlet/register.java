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

import com.jacaranda.accesoDatos.CategoryDao;
import com.jacaranda.accesoDatos.UserDao;
import com.jacaranda.logica.Category;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDao ud = new UserDao();
		boolean b = ud.addUser(new User(request.getParameter("user"),getMD5(request.getParameter("pass")),request.getParameter("name"),request.getParameter("apellido"),LocalDate.parse(request.getParameter("birth")),request.getParameter("sex"),false));
		if (b) {
			CategoryDao cd=new CategoryDao();
			List<Category>lista=cd.returnCategory();
			StringBuilder s=new StringBuilder();
					for (Category i:lista) {
						s.append("<tr>"
								+"<td>"+i.getId()+"</td>"
								+"<td>"+i.getNombre()+"</td>"
								+"<td>"+i.getDescripcion()+"</td>"
								+ "<td><a href=\"main.jsp?id=" + i.getId() + "\">Ver Coches</td>"
								);
					}
					
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
					+ "            <th>Ver Coches</th>\r\n"
					+ "        </tr>\r\n"
					+ s
					+ "    </table>\r\n"
					+ "</body>\r\n"
					+ "</html>");
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
