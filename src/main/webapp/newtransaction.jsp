<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>

	<h1>New Expense</h1>
	<form method="post" action="/ExpenseTracker/Dashboard/Addtransaction">
		<label for="amount">Amount</label>
			<input type=number name="et_amount" id="amount" placeholder="eg: 900" required>
		<label for="description">Description</label>
			<input type=text name="et_description" id="description" placeholder="Wifi Bill" required>
		<label for="category">Transaction Category</label>
		<input list="categories" name="et_category" id="category">
			<datalist id = "categories">
			 <c:forEach items = "${categories}"  var = "category">
			 	<option value="<c:out value = "${category }"/>">
			 </c:forEach>
			 <option value="New">Add New Category</option>
			</datalist>
		
		<label for="credit">Credited</label><input type="radio" value="credit" id="credit" name="et_transactiontype" required>
		<label for="debit">Debited</label><input type="radio" value="debit" id="debit" name="et_transactiontype" required>
		
		<label for="date">Transaction Date</label>
			<input type="date" id="date" name="et_date" required>
		<label for="time">Transaction Time</label>
			<input type="time" id="time" name="et_time" required>
		<input type="submit" value="Add Transaction">
	</form>
<%@ include file = "/static_content/footer.jsp"%>