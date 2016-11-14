
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.EmployeeDao"%>
<%@ page import="pojo.Employee"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">
body {
	padding: 25px;
}
</style>
</head>
<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Enter Information</h3>
		</div>
		<div class="panel-body">

			<form action="insert" method="post">

				<%
					Employee dispatchedEmployee = (Employee) request.getAttribute("Employee");		
							
				%>
				<input type="hidden" id="id" name= "dispatchedID" value="<%= dispatchedEmployee != null ? dispatchedEmployee.getId() : "" %>" />
				<div class="form-group">
					<label for="name">Name:</label> <input type="text"
						class="form-control" name="name" id="name" placeholder="Name"
						value="<%= dispatchedEmployee != null ? dispatchedEmployee.getName() : "" %>" />
				</div>
				<div class="form-group">
					<label for="address">Address:</label> <input type="text"
						class="form-control" id="address" name="address"
						placeholder="Address" value="<%= dispatchedEmployee != null ? dispatchedEmployee.getAddress() : "" %>" />
				</div>
				<div class="form-group">
					<label for="country">Country:</label> <select id="country"
						name="country" class="form-control" >
						<option value="United States">United States</option>
						<option value="Bangladesh">Bangladesh</option>
						<option value="Germany">Germany</option>
						<option value="Canada">Canada</option>
					</select>

				</div>
				<div class="form-group">
					<label for="gender">Gender:</label>
					<div class="radio">
						<label><input type="radio" name="gender" value="Male">Male</label>
					</div>
					<div class="radio">
						<label><input type="radio" name="gender" value="Female">Female</label>
					</div>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>

	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Current Employees</h3>
		</div>
		<div class="panel-body"></div>
		<table class="table table-striped">
			<thead>
				<tr>

					<th>ID</th>
					<th>NAME</th>
					<th>ADDRESS</th>
					<th>COUNTRY</th>
					<th>GENDER</th>
					<th>ACTION</th>


				</tr>
			</thead>

			<tbody>

				<%!EmployeeDao empdao = EmployeeDao.getInstance();%>

				<%
					ArrayList<Employee> empList = empdao.findAll();
					for (Employee emp : empList) {
				%>

				<tr>
					<td><%=emp.getId()%></td>
					<td><%=emp.getName()%></td>
					<td><%=emp.getAddress()%></td>
					<td><%=emp.getCountry()%></td>
					<td><%=emp.getGender()%></td>
					<td><a href="update?id=<%=emp.getId()%>">Edit</a>/<a
						href="delete?id=<%=emp.getId()%>">Delete</a></td>

				</tr>


				<%
					}
				%>
			</tbody>
		</table>
</body>
</html>