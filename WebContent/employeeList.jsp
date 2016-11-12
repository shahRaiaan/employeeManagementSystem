
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	body{
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
				<div class="form-group">
					<label for="name">Name:</label> <input type="text"
						class="form-control" name="name" id="name" placeholder="Name">
				</div>
				<div class="form-group">
					<label for="address">Address:</label> <input type="text"
						class="form-control" id="address" name="address"
						placeholder="Address">
				</div>
				<div class="form-group">
					<label for="country">Country:</label> <select id="country"
						name="country" class="form-control">
						<option value="Yemen">Yemen</option>
						<option value="Yugoslavia">Yugoslavia</option>
						<option value="Zambia">Zambia</option>
						<option value="Zimbabwe">Zimbabwe</option>
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


</body>
</html>