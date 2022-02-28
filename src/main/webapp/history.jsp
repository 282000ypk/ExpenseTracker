<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.expense.expense.Expense" %>
<link rel="stylesheet" href="/ExpenseTracker/static_content/common_style.css">
<script>
	
</script>
<style>
.credit
{
color: green;
}
.debit
{
color: red;
}
</style>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%if( ((ArrayList)request.getAttribute("transactions")).size() == 0 ) { %>
	<h2>No Transactions Found</h2>
	<%
	}
	%>
	<c:forEach items="${transactions }" var="transaction">
		<div class="history-card">
		<div>
			<a href="../Dashboard/edit?id=${transaction.getId()}">
				<img src="/ExpenseTracker/static_content/images/edit_icon.png">
				<span>Edit Transaction</span>
			</a>
			<a href="../Dashboard/delete?id=${transaction.getId()}">
				<img src="/ExpenseTracker/static_content/images/delete_icon.png">
				<span>Delete Transaction</span>
			</a>
		</div>
			<details>
				<summary>
						<c:if test="${transaction.getTransaction_type().equals(\"credit\")}">
							<h2 class="credit">${transaction.getAmount() }</h2>
						</c:if>
						<c:if test="${transaction.getTransaction_type().equals(\"debit\")}">
					    	<h2 class="debit">${transaction.getAmount() }</h2>
					    </c:if>
				
				</summary>
				Category: <p>${transaction.getCategory() }</p>
				Description: <p>${transaction.getDescription() }</p>	
			</details>
			<p>Date: ${transaction.getDate() }</p>
			<p>Time: ${transaction.getTime() }</p>
		</div>
	</c:forEach>