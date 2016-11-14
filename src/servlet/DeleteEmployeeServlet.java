package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDao;

public class DeleteEmployeeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String m = request.getParameter("id");
		int id = Integer.parseInt(m.trim());
		
		EmployeeDao dao = EmployeeDao.getInstance();
	    dao.delete(id);
		
		response.sendRedirect("employeeList.jsp");
		

	}

}
