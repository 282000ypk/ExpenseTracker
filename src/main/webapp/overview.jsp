<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ include file = "/static_content/header.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
<script src="../static_content/data_fetch.js"></script>
<link rel="stylesheet" href="/ExpenseTracker/static_content/overview.css">


<div class="container">
	<h1>OverView of Transactions</h1>
	Showing Transactions and Analysis for following duration: <select onchange="update(this.value)">
		<option value="month">This MonthsTransactions</option>
		<option value="day">Todays Transactions</option>
		<option value="week">This weeks Transactions</option>
		<option value="last_three_month">Last Three months Transactions</option>
		<option value="last_six_month">Last six months Transactions</option>
		<option value="all">All Transactions</option>
	</select>
	<div class="chart-box">
		<div class="chart">
			<h2>Debits chart</h2>
			<canvas id="debitchart"></canvas>
		</div>
		<div class="chart">
			<h2>Credits chart</h2>
			<canvas id="creditchart"></canvas>
		</div>
	</div>
	<h2>Trasnactions</h2>
	<div class="box1 history-box">
		
	</div>
</div>
	
<script>
const ctx1 = document.getElementById('debitchart');
const ctx2 = document.getElementById('creditchart');
var debitchart_data, creditchart_data;
var debitchart, creditchart;
getdata("month")
</script>

<%@ include file = "/static_content/footer.jsp"%>