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
			<h2>To Ensure Security of your credentials we need to change the one Time password.</h2>
			<p>${message}</p>
			<form id="profileform" method="post" action="../ForgetPassword/newpassword" onsubmit="validate(event)">
				<label for="new_password">New Password</label>
				<input type="password" name="et_password" id="new_password" class="input_text">
				<label for="repeat_password">Confirm Password</label>
				<input type="password" name="et_password_again" id="repeat_password" class="input_text">
				<input type="submit" value="confirm" class="input_submit">
			</form>
		</div>
	</div>

	<footer>
		<div>
			<a href = "/ExpenseTracker/Registration/">Register</a>
			<a href = "/ExpenseTracker/Contact_us/">Contact Us</a>
		</div>
		<p>Made By @Yogesh Kamble - 2022</p>
	</footer>
	<script>
	var form = document.getElementById("profileform");
		function validate(event)
		{
			event.preventDefault()
			
			var old_password = document.getElementById("new_password").value;
			var repeat_password = document.getElementById("repeat_password").value;
			if(old_password == repeat_password)
			{
				console.log(form)
				form.submit()
				return;
			}
			alert("Both passwords don't match")
		}
	</script>
</body>
</html>