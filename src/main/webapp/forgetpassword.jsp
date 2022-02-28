<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name="google-signin-client_id" content="468780636025-b72el8e52v8rugf6pu8fag5m0rgpuo3p.apps.googleusercontent.com">
	<link rel="stylesheet" href="/ExpenseTracker/static_content/common_style.css">
	<link rel="stylesheet" href="/ExpenseTracker/static_content/forget_password.css">
</head>
<body>


	<header>
		<a href = "#"><img src = "/ExpenseTracker/static_content/images/logo.png"></a>
	</header>

	<div class="container">
		<div class="data">
			<h1>Forget Password</h1>
			<h2>We will reset password for your account and send one time password on your email address. 
			please use that on time password to login and set a new password</h2>
			<p>${message}</p>
			<form action="sendotp" method="post">
			<label for="et_email">Enter Email address</label>
				<input id="et_email" type="email" name="et_email" class="input_text">
				<input type="submit" value="Send Password" class="input_submit">
			</form>
		</div>
	</div>

	<footer>
		<div>
			<a href = "/ExpenseTracker/Dashboard/">Dashboard</a>
			<a href = "/ExpenseTracker/Registration/">Register</a>
			<a href = "/ExpenseTracker/Contact_us/">Contact Us</a>
		</div>
		<p>Made By @Yogesh Kamble - 2022</p>
	</footer>

</body>
</html>