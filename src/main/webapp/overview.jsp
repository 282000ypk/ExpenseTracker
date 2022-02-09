<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
	<h1>OverView of Transactions</h1>
	<div style = "width: 90vw;display: flex;">
	<canvas id="myChart" style="width: 200px;height: 200px;display: flex;" onclick="refreshchart()"></canvas>
	</div>
<script>
const ctx = document.getElementById('myChart');
var chartdata;
var testdata = {
	    type: 'pie',
	    data: {
	        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
	        datasets: [{
	            label: '# of Votes',
	            data: [12, 19, 3, 5, 2, 3],
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	}
var request= fetch("./ChartData/")
	.then(response => response.json())
	.then(data => {
		console.log(data)
		console.log(testdata)
		chartdata = data;
		console.log(data == testdata)
		})
var myChart = new Chart(ctx, chartdata);

function refreshchart()
{
	myChart.destroy();
	myChart = new Chart(ctx, testdata);	
}

</script>

<%@ include file = "/static_content/footer.jsp"%>