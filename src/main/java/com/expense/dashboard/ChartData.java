package com.expense.dashboard;

import java.util.ArrayList;

import com.google.gson.Gson;

public class ChartData {
	private String type = "pie";
	private Data data = new Data();
	private Options options = null;


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
	public Options getOptions() {
		return options;
	}
	public void setOptions(Options options) {
		this.options = options;
	}
	@Override
	public String toString() {
		return "ChartData [type=" + type + ", data=" + data + ", options=" + options + "]";
	}
	
	
	
}
