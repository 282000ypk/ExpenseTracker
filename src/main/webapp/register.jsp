<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${message}
<form method = "post" action="./Register">
	<label>Email address</label>
	<input type="text" name="et_email">
	<label>Name</label>
	<input type="text" name="et_name">
	<label>Password</label>
	<input type="password" name="et_password">
	<input type="submit" value="register">
</form>
</body>
</html>