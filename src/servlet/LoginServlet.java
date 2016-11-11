package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("getUserName");
		String password = request.getParameter("getUserPassword");

		if ((validate(username, password)) == true) {

			response.sendRedirect("employeeList.jsp");

		} else {
			response.sendRedirect("index.html");
		}
		;
	}

	private boolean validate(String userName, String password) {
		boolean status = false;
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeeinfo", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from admin where username=? and password=?");
			ps.setString(1, userName);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

}
