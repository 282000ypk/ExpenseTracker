package com.expense.dashboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.expense.user.User;
import com.google.gson.Gson;

/**
 * Servlet implementation class ChartApiController
 */
@WebServlet("/ChartData/*")
public class ChartApiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ChartApiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONObject obj = new JSONObject();
		Gson gson = new Gson();
		ChartData chartdata = new ChartData();
		String json = gson.toJson(chartdata);
		response.getWriter().append(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}