<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>
<!-- Search Page -->	
<label for="search">Search</label>
<input type="text" id="search" onkeyup="search_key()">
<select onchange="gettransactions(this.value)">
	<option value="day">Todays Transactions</options>
	<option value="week">This Weeks Transactions</options>
	<option value="month">This Months Transactions</options>
	<option value="all">All Transactions</options>
</select>
<div class="box1"></div>
<script>
var data
async function gettransactions(duration)
{
	var ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			{
			document.querySelector(".box1").innerHTML = ajax.responseText;
			}
	}
	ajax.open("get", "./History?duration=" + duration, true);
	await ajax.send();	
}
gettransactions("month")

function search_key()
{
	var list = document.querySelectorAll(".card");
	console.log(list)
	/*for(let item: list)
	{
		console.log(item)
	}*/
}
search_key()

</script>

<%@ include file = "/static_content/footer.jsp"%>