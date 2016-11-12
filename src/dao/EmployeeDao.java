package dao;

import java.util.List;

import pojo.Employee;

public class EmployeeDao {

	private EmployeeDao dao = null;

	private EmployeeDao() {

	}

	public EmployeeDao getInstance() {
		if (dao == null) {

			dao = new EmployeeDao();

		}
		return dao;
	}

	public void add(String name, String address, String country, String gender) {

	}

	public void update(int id) {

	}

	public void delete(int id) {

	}

	public void saveOrUpdate(int id) {

	}

	public List<Employee> findAll() {
		return null;

	}

	public Employee findById(int id) {
		return null;

	}
}
