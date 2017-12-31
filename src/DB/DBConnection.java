package DB;

import java.sql.*;

public class DBConnection 
{
	public static Connection CreateConnection()
	{
		Connection conn = null;;
		
		String url="jdbc:mysql://node6043-itute.ocs.opusinteractive.io/quanlyttth?useUnicode=true&characterEncoding=UTF-8";
		String username = "root";
		String password = "AIKfna60681";
		
		try 
		{
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			//create connection
			conn = DriverManager.getConnection(url,username,password);
			
		} 
		catch (ClassNotFoundException e) 
		{

			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}	
		return conn;
	}
}
