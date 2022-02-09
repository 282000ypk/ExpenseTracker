<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
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
	<h2>No Transactions Made today</h2>
	<%} %>
	<c:forEach items="${transactions }" var="transaction">
		<div>
		<details>
			<summary>
					<c:if test="${transaction.getTransaction_type().equals(\"credit\")}">
						<h2 class="credit">${transaction.getAmount() }</h2>
					</c:if>
					<c:if test="${transaction.getTransaction_type().equals(\"debit\")}">
				    	<h2 class="debit">${transaction.getAmount() }</h2>
				    </c:if>
			<p>${transaction.getCategory() }</p></summary>
			<p>${transaction.getDescription() }</p>
			<p>${transaction.getDate() }</p>
			<p>${transaction.getTime() }</p>
		</details>
		</div>
	</c:forEach>