package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDao;
import pojo.Employee;

public class EditEmployeeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer id = Integer.parseInt(request.getParameter("id"));
		
		EmployeeDao dao = EmployeeDao.getInstance();
		Employee emp = dao.findById(id);
		
		request.setAttribute("Employee", emp);
		
		request.getRequestDispatcher("employeeList.jsp").forward(request, response);
	}

}