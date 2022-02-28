<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/ExpenseTracker/static_content/add_edit.css">
<%@ include file = "/static_content/header.jsp"%>
<div class="container">
	<h1>New Expense</h1>
	<form method="post" action="Addtransaction">
		<label for="amount">Amount</label>
			<input type=number name="et_amount" id="amount" placeholder="eg: 900" required class="input_text">
		<label for="description">Description</label>
			<input type=text name="et_description" id="description" placeholder="Wifi Bill" required class="input_text">
		<label for="category">Transaction Category</label>
		<input list="categories" name="et_category" id="category" class="input_text" required>
			<datalist id = "categories">
			 <c:forEach items = "${categories}"  var = "category">
			 	<option value="<c:out value = "${category }"/>">
			 </c:forEach>
			 <option value="New">Add New Category</option>
			</datalist>
		
		<h3>PLease select Transaction type</h3>
		<input type="radio" value="credit" id="credit" name="et_transactiontype" required>
		<label for="credit">Credited</label>
		<input type="radio" value="debit" id="debit" name="et_transactiontype" required>
		<label for="debit">Debited</label>
		
		<label for="date">Transaction Date</label>
			<input type="date" id="date" name="et_date" required class="input_text">
		<label for="time">Transaction Time</label>
			<input type="time" id="time" name="et_time" required class="input_text">
		<input type="submit" value="Add Transaction" class="input_submit">
		<a href="Sendback" class="a_btn">Cancel</a>
	</form>
		
</div>
<%@ include file = "/static_content/footer.jsp"%>