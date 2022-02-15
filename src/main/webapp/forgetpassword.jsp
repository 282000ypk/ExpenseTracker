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
<form action="/ExpenseTracker/ForgetPassword/sendotp" method="post">
<label for="et_email">Enter Email address</label><input id="et_email" type="text" name="et_email">
	<input type="submit" value="Send Otp">
</form>
</body>
</html>