<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ include file = "/static_content/header.jsp"%>
	<h1>Dashboard</h1>
	<div class=box1>
		<div onclick="getalltransactions('day')">
			<div class = "card" >
				<p>Credits for today</p>
				<p>${dashboard_data.get("credit_for_today")}</p>
			</div>
			<div class = "card">
				<p>Debits for today</p>
				<p>${dashboard_data.get("debit_for_today")}</p>
			</div>
		</div>
		<div onclick="getalltransactions('week')">
			<div class = "card" >
				<p>Debit for this week</p>
				<p>${dashboard_data.get("debit_for_week")}</p>
			</div>
			<div class = "card">
				<p>Credit for this week</p>
				<p>${dashboard_data.get("credit_for_week")}</p>
			</div>
		</div>
		<div onclick="getalltransactions('month')">
			<div class = "card">
				<p>Debit for this Month</p>
				<p>${dashboard_data.get("debit_for_month")}</p>
			</div>
			<div class = "card" >
				<p>Credit for this Month</p>
				<p>${dashboard_data.get("credit_for_month")}</p>
			</div>
		</div>
	</div>
	
	<div class=box2>
	
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
					}
			}
			ajax.open("get", "./History?duration=" + duration, true);
			ajax.send();	
		}
	</script>
	<%@ include file = "/static_content/footer.jsp"%>