package com.expense.dashboard;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.expense.expense.Expense;
import com.expense.user.User;

@WebServlet("/Dashboard/*")
public class DashboardController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpsession = request.getSession(false);
		try 
		{
			if(httpsession != null && httpsession.getAttribute("user") == null)
			{
				response.sendRedirect("/ExpenseTracker/Login/");
				return;
			}
			else
			{
				User user = (User) httpsession.getAttribute("user");
				request.setAttribute("user", user);
				String path = (request.getPathInfo() != null) ? request.getPathInfo() : "";
				
				if(path.equals("/History"))
				{
					
					// more code for filter
					String duration = (request.getParameter("duration") == null)? "day" : (request.getParameter("duration"));
					ArrayList<Expense> allexpense = Expense.getExpenseByDuration(user, duration);
					request.setAttribute("transactions", allexpense);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/history.jsp");
					dispatcher.forward(request, response);
					return;
				}
				
				else if(path.equals("/Overview"))
				{
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/overview.jsp");
					dispatcher.forward(request, response);
					return;
				}
				else if(path.equals("/Newtransaction"))
				{
					ArrayList<String> categories = Expense.getCategories(user);
					request.setAttribute("categories", categories);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/newtransaction.jsp");
					dispatcher.forward(request, response);
					return;
				}
				else if(path.equals("/Addtransaction"))
				{
					// retrive attributes
					
					double amount = (request.getParameter("et_amount") == null) ? 0 : (Double.parseDouble((String) request.getParameter("et_amount")));
					String description = (request.getParameter("et_description") == null) ? "" : (String) request.getParameter("et_description");
					String category = (request.getParameter("et_category") == null)? "" : (String) request.getParameter("et_category");
					String transaction_type = (request.getParameter("et_transactiontype") == null) ? "" : (String) request.getParameter("et_transactiontype");
					String date = (request.getParameter("et_date") == null) ? "current_date" : (String) request.getParameter("et_date");
					String time = (request.getParameter("et_time") == null) ? "current_time" : (String) request.getParameter("et_time");
					
					if(Expense.addExpense(user, amount, description, category, date, time, transaction_type))
					{
						request.setAttribute("alert", "success");
						request.setAttribute("message", "Transaction Added Successfully");
					}
					else
					{
						request.setAttribute("alert", "failure");
						request.setAttribute("message", "Oops! failed to add Transaction");
					}
				}
				HashMap<String, Double> dashboard_data = Expense.getDashboardData(user);
				request.setAttribute("dashboard_data", dashboard_data);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/dashboard.jsp");
				dispatcher.forward(request, response);
				return;
			}
		}
		catch(NullPointerException e)
		{
			response.sendRedirect("/ExpenseTracker/Login/");
			return;
		}	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

}
