package com.expense.dashboard;

import java.util.ArrayList;

import com.expense.expense.Expense;
import com.expense.user.User;
import com.google.gson.Gson;

public class Data {
	private ArrayList<String> labels;
	private ArrayList<Dataset> datasets;
	
	public Data() {
		this.labels = new ArrayList<String>();
			this.labels.add("Red");
			this.labels.add("Blue");
			this.labels.add("Yellow");
			this.labels.add("Green");
			this.labels.add("Purple");
			this.labels.add("Orange");
		this.datasets = new ArrayList<Dataset>();
			this.datasets.add(new Dataset());
	}
	
	public static Data getUsersCurrentMonthData(User user)
	{
		Data data = new Data();
		data.setLabels(Expense.getCategories(user));
		// data.setDatasets();
		return data;
	}
	
	public ArrayList<String> getLabels() {
		return labels;
	}

	public void setLabels(ArrayList<String> labels) {
		this.labels = labels;
	}

	public ArrayList<Dataset> getDatasets() {
		return datasets;
	}

	public void setDatasets(ArrayList<Dataset> datasets) {
		this.datasets = datasets;
	}
	@Override
	public String toString() {
		return new Gson().toJson(this);
	}
	
	
	// sub class dataset
	public class Dataset
	{
		private String label;
		private ArrayList<Integer> data;
		private ArrayList<String> backgroundColor;
		private ArrayList<String> borderColor;
		private int borderWidth;
		
		public Dataset() {
			this.label = "# of Votes";
			this.data = new ArrayList<Integer>();
				this.data.add(12);
				this.data.add(9);
				this.data.add(3);
				this.data.add(5);
				this.data.add(2);
				this.data.add(3);
			this.backgroundColor = new ArrayList<String>();
				this.backgroundColor.add("rgba(255, 99, 132, 0.2)");
				this.backgroundColor.add("rgba(54, 162, 235, 0.2)");
				this.backgroundColor.add("rgba(255, 206, 86, 0.2)");
				this.backgroundColor.add("rgba(75, 192, 192, 0.2)");
				this.backgroundColor.add("rgba(153, 102, 255, 0.2)");
				this.backgroundColor.add("rgba(255, 159, 64, 0.2)");
			this.borderColor = new ArrayList<String>();
				this.borderColor.add("rgba(255, 99, 132, 1)");
				this.borderColor.add("rgba(54, 162, 235, 1)");
				this.borderColor.add("rgba(255, 206, 86, 1)");
				this.borderColor.add("rgba(75, 192, 192, 1)");
				this.borderColor.add("rgba(153, 102, 255, 1)");
				this.borderColor.add("rgba(255, 159, 64, 1)");
			this.borderWidth = 1;
		}

		public String getLabel() {
			return label;
		}

		public void setLabel(String label) {
			this.label = label;
		}

		public ArrayList<Integer> getData() {
			return data;
		}

		public void setData(ArrayList<Integer> data) {
			this.data = data;
		}

		public ArrayList<String> getBackgroundColor() {
			return backgroundColor;
		}

		public void setBackgroundColor(ArrayList<String> backgroundColor) {
			this.backgroundColor = backgroundColor;
		}

		public ArrayList<String> getBorderColor() {
			return borderColor;
		}

		public void setBorderColor(ArrayList<String> borderColor) {
			this.borderColor = borderColor;
		}

		public int getBorderWidth() {
			return borderWidth;
		}

		public void setBorderWidth(int borderWidth) {
			this.borderWidth = borderWidth;
		}
	}


	public static Data getCredits() {
		// TODO Auto-generated method stub
		return null;
	}

	public static Data getDebits() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
