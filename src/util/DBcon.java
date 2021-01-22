package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBcon {
	private DBcon()
	{
		
	}
	public static Connection getCon()
	{
		Connection con =null;
		try {
			ResourceBundle bundle=ResourceBundle.getBundle("DB");
			Class.forName(bundle.getString("driver"));
			con = DriverManager.getConnection( 
					bundle.getString("DBurl"),bundle.getString("user"),bundle.getString("password"));
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}

