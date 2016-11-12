package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import pojo.Employee;

public class EmployeeDao {

	private static EmployeeDao dao = null;

	private EmployeeDao() {

	}

	public static EmployeeDao getInstance() {
		if (dao == null) {

			dao = new EmployeeDao();

		}
		return dao;
	}

	public void add(String name, String address, String country, String gender) {
		Employee emp = new Employee(name, address, country, gender);
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = null;
		Transaction tx = null;
		try {
			session = factory.openSession();
			tx = session.beginTransaction();

			session.save(emp);

			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		} finally {
			session.close();

		}

	}

	public void updateName(int id, String name) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = null;
		Transaction tx = null;

		try {
			session = factory.openSession();
			tx = session.beginTransaction();
			Employee emp = (Employee) session.get(Employee.class, id);
			emp.setName(name);
			session.update(emp);

			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		} finally {
			session.close();

		}
	}

	public void delete(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = null;
		Transaction tx = null;

		try {
			session = factory.openSession();
			tx = session.beginTransaction();
			Employee emp = (Employee) session.get(Employee.class, id);
			session.delete(emp);

			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		} finally {
			session.close();

		}
	}

	public void saveOrUpdate(int id) {

	}

	public List<Employee> findAll() {
		return null;

	}

	public Employee findById(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = null;
		Transaction tx = null;
		Employee emp = new Employee();
		try {
			session = factory.openSession();
			tx = session.beginTransaction();
			emp = (Employee) session.get(Employee.class, id);

			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		} finally {
			session.close();

		}
		return emp;
	}
}
