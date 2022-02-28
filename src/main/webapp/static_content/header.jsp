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
	<div class="alert ${alert}">
		${message}
	</div>
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
		<a href = "#"><img src = "/ExpenseTracker/static_content/images/logo.png"></a>
		<img class="nav_icon" onclick="expand_nav()" src="/ExpenseTracker/static_content/images/menu_icon.png">
		<div class = "user_info">
			<span><span>Hi</span><span>${user.getName().split(" ")[0]}</span></span>
			<a href="profile"><img alt ="${user.getName()}" src = "${user.getProfile_pic_url()}"></a>
		</div>
		<nav>
			<img src="/ExpenseTracker/static_content/images/close_icon.png" onclick="expand_nav()" >
			<a href="Dashboard" class="a_btn">
			<img src="/ExpenseTracker/static_content/images/dashboard_icon.png">Dashboard
			<span>Go to Dashboard</span>
			</a>
			<a href="Newtransaction"  class="a_btn">
			<img src="/ExpenseTracker/static_content/images/add_icon.png">New Transaction
			<span>add new expense</span>
			</a>
			<a href="Search"  class="a_btn">
			<img src="/ExpenseTracker/static_content/images/search_icon.png">Search
			<span>Search and Filter transaction</span>
			</a>
			<a href="Overview"  class="a_btn">
			<img src="/ExpenseTracker/static_content/images/overview_icon.png">Overview
			<span>Analysis of all Transactions</span>
			</a>
			<a  href="/ExpenseTracker/Logout"  onclick="SignOut()"  class="a_btn">
			<img src="/ExpenseTracker/static_content/images/logout_icon.png">Logout
			<span>Logout from this account</span>
			</a>
		</nav>
	</header>
	
