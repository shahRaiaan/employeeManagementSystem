package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDao;

public class InsertEmployeeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
		String gender = request.getParameter("gender");

		EmployeeDao dao = EmployeeDao.getInstance();
		dao.add(name, address, country, gender);

	}

}
