<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ include file = "/static_content/header.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
<script src="/ExpenseTracker/static_content/data_fetch.js"></script>

	<h1>OverView of Transactions</h1>
	<select onchange="update(this.value)">
		<option value="month">This MonthsTransactions</option>
		<option value="day">Todays Transactions</option>
		<option value="week">This weeks Transactions</option>
		<option value="last_three_month">Last Three months Transactions</option>
		<option value="last_six_month">Last six months Transactions</option>
		<option value="all">All Transactions</option>
	</select>
	<div style = "width: 100vw;display: flex;flex-wrap: wrap;align-items: center; justify-content: space-around;">
		<div style="flex: 0 1 250px;border: 2px solid green;">
			<h1>Debits chart</h1>
			<canvas id="debitchart" style="width: 100%;display: flex;border: 2px solid red"></canvas>
		</div>
		<div style="flex: 0 1 250px;border: 2px solid green;">
			<h1>Credits chart</h1>
			<canvas id="creditchart" style="width: 100%;display: flex;border: 2px solid red"></canvas>
		</div>
	</div>
	<div class="box1">
		
	</div>
<script>
const ctx1 = document.getElementById('debitchart');
const ctx2 = document.getElementById('creditchart');
var debitchart_data, creditchart_data;
var debitchart, creditchart;
getdata("month")
</script>

<%@ include file = "/static_content/footer.jsp"%>