<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ include file = "/static_content/header.jsp"%>
<link rel="stylesheet" href="/ExpenseTracker/static_content/dashboard.css">
<div class="dashboard-container">
	<h1>Dashboard</h1>
	<h2>View your transaction history below</h2>
	<div class=box1>
		<div onclick="getalltransactions('day')" class="duration-card">
			<div class="debit-box">
				<p>Total Debit for today</p>
				<p>${dashboard_data.get("debit_for_today")}</p>
			</div>
			<div class="credit-box">
				<p>Total Credits for today</p>
				<p>${dashboard_data.get("credit_for_today")}</p>
			</div>
			
		</div>
		<div onclick="getalltransactions('week')"  class="duration-card">
			<div  class="debit-box">
				<p>Total Debit for this week</p>
				<p>${dashboard_data.get("debit_for_week")}</p>
			</div>
			<div class="credit-box">
				<p>Total Credit for this week</p>
				<p>${dashboard_data.get("credit_for_week")}</p>
			</div>
		</div>
		<div onclick="getalltransactions('month')"  class="duration-card">
			<div  class="debit-box">
				<p>Total Debit for this Month</p>
				<p>${dashboard_data.get("debit_for_month")}</p>
			</div>
			<div class="credit-box">
				<p>Total Credit for this Month</p>
				<p>${dashboard_data.get("credit_for_month")}</p>
			</div>
		</div>
		<h1>Transactions History:</h1>
	</div>
	
	<div class="box2 history-box">
		<div id="transactions" class="hide">
		</div>
	</div>
</div>
	<script>
		var data
		function getalltransactions(duration)
		{
			var ajax = new XMLHttpRequest();
			ajax.onreadystatechange = function()
			{
				if(this.readyState == 4 && this.status == 200)
				{
					document.querySelector(".box2").innerHTML = ajax.responseText;
					document.getElementById("transactions").classList.remove("loading");
					document.getElementById("transactions").classList.add("hide");
				}
				else
				{
					document.getElementById("transactions").classList.remove("hide");
					document.getElementById("transactions").classList.add("loading");
				}
			}
			ajax.open("get", "./History?duration=" + duration, true);
			ajax.send();	
		}
	</script>
	<%@ include file = "/static_content/footer.jsp"%>