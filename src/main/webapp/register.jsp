
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/ExpenseTracker/static_content/common_style.css">
	<link rel="stylesheet" href="/ExpenseTracker/static_content/register.css">
	
	
	<title>Register</title>
</head>
<body>
	<div class="alert ${alert}">
		${message}
	</div>
	<header>
		<a href = "#"><img src = "/ExpenseTracker/static_content/images/logo.png"></a>
	</header>
	<div class="container">
		<h1>Registration</h1>
		<form method = "post" action="Register">
		<div class="data">
			<h2>Please Complete Below Details to register a new Account</h2>
				<label for="name">Email address</label>
				<input type="email" name="et_email" id="name" required>
				<label for="email">Name</label>
				<input type="text" name="et_name" id="email" required>
				<label for="password">Password</label>
				<input type="password" name="et_password" id="password" minlength=8 required>
				<input type="submit" value="register">
		</div>
	</form>
	<p>
	Already have an account? click here to Login
	</p>
	<a href="/ExpenseTracker/Login/">Login</a>
	</div>
	
	<footer>
	<div>
		
		<a href = "/ExpenseTracker/Dashboard/">Dashboard</a>
		<a href = "/ExpenseTracker/Login/">Login</a>
		<a href = "/ExpenseTracker/Contact_us/">Contact Us</a>
	</div>
	<p>Made By @Yogesh Kamble - 2022</p>
	</footer>
</body>
</html>