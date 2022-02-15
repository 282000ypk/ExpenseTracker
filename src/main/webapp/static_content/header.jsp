<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
HttpSession httpsession = request.getSession(false);
try 
{
	if(httpsession != null && httpsession.getAttribute("user") == null)
	{
		response.sendRedirect("/ExpenseTracker/Login/");
		return;
	}
}
catch(NullPointerException e)
{
	response.sendRedirect("/ExpenseTracker/Login/");
	return;
}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/ExpenseTracker/static_content/common_style.css">
<meta name="google-signin-client_id" content="468780636025-b72el8e52v8rugf6pu8fag5m0rgpuo3p.apps.googleusercontent.com">

<title>${title}</title>
</head>
<body>	
	
	<script>
    function SignOut() {
      var auth2 = gapi.auth2.getAuthInstance();
      auth2.signOut().then(function () {
        console.log('User signed out.');
        // alert("uset signed out")
      });
    }

    function onLoad() {
      gapi.load('auth2', function() {
        gapi.auth2.init();
      });
    }   
    
    function expand_nav()
    {
    	var nav = document.querySelector("Header > nav");
    	nav.classList.toggle("expand_nav");
    }
    
  </script>
  <script src="https://apis.google.com/js/platform.js?onload=onLoad"></script>
	<header>
		<a href = "/ExpenseTracker/Dashboard/"><img src = "/ExpenseTracker/static_content/images/logo.png"></a>
		<img class="nav_icon" onclick="expand_nav()">
		<div class = "user_info">
			<span><span>Hi</span><span>${user.getName().split(" ")[0]}</span></span>
			<img alt ="${user.getName()}" src = "${user.getProfile_pic_url()}">
		</div>
		<nav>
			<img src="" onclick="expand_nav()">
			<a href="./">
			Dashboard icon
			<span>Go to Dashboard</span>
			</a>
			<a href="./Newtransaction">
			add icon
			<span>add new expense</span>
			</a>
			<a href="./Search">
			Search icon
			<span>Search and Filter transaction</span>
			</a>
			<a href="./Overview">
			Overview icon
			<span>Analysis of all Transactions</span>
			</a>
			<a  href="/ExpenseTracker/Logout"  onclick="SignOut()">
			Logout icon
			<span>Logout from this account</span>
			</a>
		</nav>
	</header>
	<div class="alert ${alert}">
		${message}
	</div>
