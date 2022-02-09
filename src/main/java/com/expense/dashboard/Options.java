package com.expense.dashboard;

import com.google.gson.Gson;

public class Options {
	private Scales scales;
	public Options()
	{
		this.scales = new Scales();
	}
	
	public Scales getScales() {
		return scales;
	}
	public void setScales(Scales scales) {
		this.scales = scales;
	}
	
	
	@Override
	public String toString() {
		return new Gson().toJson(this);
	}


	// scales subclass
	public class Scales
	{
		private Y y;
		public Scales()
		{
			this.y = new Y();
		}
		public Y getY() {
			return y;
		}
		public void setY(Y y) {
			this.y = y;
		}
		
		@Override
		public String toString() {
			return new Gson().toJson(this);
		}

		// Y subclass
		public class Y
		{
			private boolean beginAtZero = true;
			public Y()
			{
				this.beginAtZero = true;
			}
			public boolean isBeginAtZero() {
				return beginAtZero;
			}
			
			public void setBeginAtZero(boolean beginAtZero) {
				this.beginAtZero = beginAtZero;
			}

			@Override
			public String toString() {
				return new Gson().toJson(this);
			}
			
		}
	}
}
