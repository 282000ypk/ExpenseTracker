<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
	<h1>OverView of Transactions</h1>
	<div style = "width: 100vw;display: flex;flex-wrap: wrap;">
	<canvas id="debitchart" style="flex: 1 1 30vw;display: flex;border: 2px solid red"></canvas>
	<canvas id="creditchart" style="display: flex;border: 2px solid red"></canvas>
	</div>
<script>
const ctx1 = document.getElementById('debitchart');
const ctx2 = document.getElementById('creditchart');
var debitchart_data, creditchart_data;
var debitchart, creditchart;
var request = fetch("/ExpenseTracker/ChartData/")
	.then(response => response.json())
	.then(data => {
		debitchart_data = data
		debitchart = new Chart(ctx1, debitchart_data);
		})

var request = fetch("/ExpenseTracker/ChartData/")
	.then(response => response.json())
	.then(data => {
		creditchart_data = data
		creditchart = new Chart(ctx2, creditchart_data);
		})



</script>

<%@ include file = "/static_content/footer.jsp"%>