<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/ExpenseTracker/ForgetPassword/newpassword">
	<label for="password">New Password</label>
		<input type="password" name="et_password" id="password">
	<label>Confirm Password</label>
		<input type="password" name="et_password_again" id="password again">
	<input type="submit" value="confirm">
</form>
</body>
</html>