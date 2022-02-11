package com.expense.dashboard;

import java.util.ArrayList;

import com.google.gson.Gson;

public class ChartData {
	private String type = "doughnut";
	private Data data = new Data();
	

	public ChartData(String type) {
		if(type.equals("credit"))
		{
			this.data = Data.getCredits();
		}
		else
		{
			this.data = Data.getDebits();
		}
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Data getData() {
		return data;
	}
	public void setData(Data data) {
		this.data = data;
	}
}
