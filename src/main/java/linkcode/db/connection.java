package linkcode.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class connection {

	
	static Connection con=null;
	PreparedStatement pstate=null;
	static String url="jdbc:oracle:thin:@localhost:1521:XE";
	static String driver="oracle.jdbc.OracleDriver";
	static String username="system";
	static String password="system";
	static
	{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static Connection myConnection() {
		
		
		
		try {
			
			con=DriverManager.getConnection(url,username,password);
			System.out.println("connection "+con);
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("hello account");
		return con;
	}
	
	
}
