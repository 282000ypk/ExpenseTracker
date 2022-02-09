package com.expense.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
	private static String url = "jdbc:postgresql://localhost/et";
	private static String user_name = "postgres";
	private static String password = "postgres";
	private static Connection con = null;
	
	public static Connection getConnection()
	{
		try
		{
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(DBCon.url, DBCon.user_name, DBCon.password);
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return con;
		}
	}
	
	public static boolean close()
	{
		try
		{
			if(DBCon.con!=null)
			{
				DBCon.con.close();
				return true;
			}
			return false;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}		
	}
}





