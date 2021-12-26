package com.xyz;

import java.sql.*;

public class Conndb {
	String driver = "com.mysql.jdbc.Driver";
	String source = "jdbc:mysql://localhost:3306/mydb";
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;

	public Conndb() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.getStackTrace();
		}
	}

	// function to select

	public ResultSet getQuery(String mysql) {
		try {
			con = DriverManager.getConnection(source, "root", "root");
			st = con.createStatement();
			rs = st.executeQuery(mysql);

		} catch (SQLException e) {
			e.getStackTrace();
		}

		return rs;

	}

	// insert,delete,update
	public int getUpdate(String mysql) {
		int result = 0;
		try {
			con = DriverManager.getConnection(source, "root", "root");
			st = con.createStatement();
			result = st.executeUpdate(mysql);

		} catch (SQLException e) {
			e.getStackTrace();
		}

		return result;

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Conndb con1 = new Conndb();
			String mysql = "select * from user";
			ResultSet myrs = con1.getQuery(mysql);
			while (myrs.next()) {

				System.out.println("" + myrs.getString("username") + ""
						+ myrs.getString("userpass"));
			}

		} catch (SQLException e) {

			e.getStackTrace();
		}

	}

}
