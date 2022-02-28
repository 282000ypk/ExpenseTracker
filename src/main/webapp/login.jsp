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
	<link rel="stylesheet" href="/ExpenseTracker/static_content/login.css">
</head>
<body>
	<!--Hidden Form-->
	<form id="googleform" action="GoogleLogin" method="post">
		<input type="hidden" name="email" id="google_email">
		<input type="hidden" name="name" id="google_name">
		<input type="hidden" name="profile_pic_url" id="google_profile_pic_url">
	</form>

	<header>
		<a href = "#"><img src = "/ExpenseTracker/static_content/images/logo.png"></a>
	</header>

	<div class="container">
		<h1>Login</h1>
		<form action="Authenticate" method="post">
		<div class="data">
		<p>${message}</p>
		
			<label for="uname">User Name</label>
			<input type="email" name="user_name" id="uname" minlength="8">
			<label for="password">Password</label>
			<input type="password" name="password" id="password" minlength="1">
			<input type="submit" value="Login">
			<div class="g-box">
			<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
			</div>
		</div>
		</form>
		
		<p>Forget Your password click here to reset your password</p>
		<a href="../ForgetPassword/">Forget Password</a>
		
		<p>Don't Have a account click below to register</p>
		<a href="../Registration/">Register</a>
		
	</div>

	<footer>
		<div>
			<a href = "/ExpenseTracker/Dashboard/">Dashboard</a>
			<a href = "/ExpenseTracker/Registration/">Register</a>
			<a href = "/ExpenseTracker/Contact_us/">Contact Us</a>
		</div>
		<p>Made By @Yogesh Kamble - 2022</p>
	</footer>
	

 <script type="text/javascript">
      function onSignIn(googleUser) 
      {
		var profile = googleUser.getBasicProfile();
		var profile_pic_url=profile.getImageUrl();
		var name=profile.getName();
		var email=profile.getEmail();
		
		document.getElementById("google_email").value = email;
		document.getElementById("google_name").value = name;
		document.getElementById("google_profile_pic_url").value = profile_pic_url;
		
      	document.getElementById("googleform").submit();
      }
 </script>
</body>
</html>