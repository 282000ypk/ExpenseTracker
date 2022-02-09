<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="468780636025-b72el8e52v8rugf6pu8fag5m0rgpuo3p.apps.googleusercontent.com">
</head>
<body>
<form action="/ExpenseTracker/Login/Authenticate" method="post">
${message}
User Name<input type="text" name="user_name">
Password<input type="password" name="password">
<input type="submit" value="login">
<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
</form>

<form id="googleform" action="/ExpenseTracker/Login/GoogleLogin" method="post">
	<input type="hidden" name="email" id="google_email">
	<input type="hidden" name="name" id="google_name">
	<input type="hidden" name="profile_pic_url" id="google_profile_pic_url">
</form>

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