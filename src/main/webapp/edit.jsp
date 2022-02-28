<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/static_content/header.jsp"%>
<link rel="stylesheet" href="/ExpenseTracker/static_content/add_edit.css">
<div class="container">
	<h1>New Expense</h1>
	<form method="post" action="Edittransaction">
		<input type="hidden" name="et_id" value="${transaction.getId()}">
		<label for="amount">Amount</label>
			<input type=number name="et_amount" id="amount" placeholder="eg: 900" value="${transaction.getAmount()}" required class="input_text">
		<label for="description">Description</label>
			<input type=text name="et_description" id="description" placeholder="Wifi Bill" value="${transaction.getDescription() }" required class="input_text">
		<label for="category">Transaction Category</label>
		<input list="categories" name="et_category" id="category" required value="${transaction.getCategory()}" class="input_text">
			<datalist id = "categories">
			 <c:forEach items = "${categories}"  var = "category">
			 	<option value="<c:out value = "${category }"/>">
			 </c:forEach>
			 <option value="New">Add New Category</option>
			</datalist>
		
		<h3>Transaction type</h3>
		<input type="radio" value="credit" id="credit" name="et_transactiontype" required
		<c:if test="${transaction.getTransaction_type() eq 'credit' }">
			checked
		</c:if> />
		<label for="credit">Credited</label>
		
		<input type="radio" value="debit" id="debit" name="et_transactiontype" required
		<c:if test="${transaction.getTransaction_type() eq 'debit' }">
			checked
		</c:if>
		/>
		<label for="debit">Debited</label>
		
		<label for="date">Transaction Date</label>
			<input type="date" id="date" name="et_date" required value="${transaction.getDate() }" class="input_text">
		<label for="time">Transaction Time</label>
			<input type="time" id="time" name="et_time" required value="${transaction.getTime() }" class="input_text">
		<input type="submit" value="Save Changes" class="input_submit">
		<a href="Sendback" class="a_btn">Cancel</a>
	</form>
</div>
<%@ include file = "/static_content/footer.jsp"%>