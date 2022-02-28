<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>
<%@ page import="com.expense.user.User" %>
	<script>
		
		function validate(event)
		{
			event.preventDefault()
			var old_password = document.getElementById("new_password").value;
			var repeat_password = document.getElementById("repeat_password").value;
			if(old_password == repeat_password)
			{
				var form = document.getElementById("profileform");
				console.log(form)
				form.submit()
				return;
			}
			alert("Both passwords don't match")
		}
	</script>
	<link rel="stylesheet" href="/ExpenseTracker/static_content/profile.css">
	<div class="alert ${alert}">
		${message}
	</div>

	<div class="container">
	
	<div class="box1">	
		<img src="${user.getProfile_pic_url()}">
			<form action="saveprofilepic" enctype="multipart/form-data" method="post">
			<div class="details">
			<label for="profile_pic">Upload Photo</label>
			<input type="file" name="profile_pic" id="profile_pic" class="input_submit">
			<input type="submit" value="Upload" class="input_submit">
			</div>
			</form>	
		<h1>Hi ${user.getName()}</h1>
		<h3>${user.getEmail()}</h3>
	</div>
	
	<form action="newpassword" method="post" id="profileform" onsubmit="validate(event)">
	<div class="actions">
		<%if(((User)request.getAttribute("user")).getAction().equals("google")) { %>
			<h3>Create Password</h3>
			<label for="new_password">New Password</label>
			<input type="password" name="new_password" id="new_password" class="input_text" minlength=1> 
			<label for="repeat_password">Repeat New Password</label>
			<input type="password" name="repeat_password" id="repeat_password" class="input_text" minlength=8>
			<input type="submit" value="Save Password" class="input_submit">
			
		<% } else {%>
			<h3>Reset Password</h3>
			<label for="old_password">Old Password</label>
			<input type="password" name="old_password" id="old_password" class="input_text" minlength=1>
			<label for="new_password">New Password</label>
			<input type="password" name="new_password" id="new_password" class="input_text" minlength=8> 
			<label for="repeat_password">Repeat New Password</label>
			<input type="password" name="repeat_password" id="repeat_password" class="input_text" minlength=8>
			<input type="submit" value="Change Password" class="input_submit">
			<a href="../ForgetPassword/" class="a_btn">Forget Password</a>
			<%} %>
	</div>
	</form>
	</div>

<%@ include file = "/static_content/footer.jsp"%>