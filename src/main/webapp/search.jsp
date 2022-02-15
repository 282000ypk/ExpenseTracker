<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>
<!-- Search Page -->	
<label for="search">Search</label>
<input type="text" id="search" name="key" onkeyup="search_key(this.value)" autocomplete="false">
<select id="duration" onchange="gettransactions(this.value)">
	<option value="day">Todays Transactions</options>
	<option value="week">This Weeks Transactions</options>
	<option value="month">This Months Transactions</options>
	<option value="all">All Transactions</options>
</select>
<div class="box1"></div>
<script src="/ExpenseTracker/static_content/data_fetch.js"></script>
<script>
gettransactions("day")
</script>

<%@ include file = "/static_content/footer.jsp"%>