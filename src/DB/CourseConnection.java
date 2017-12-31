package DB;

import java.sql.*;	

public class CourseConnection {
	
	public static Connection CreateConnection() {
		
		Connection conn = null;
		String url="jdbc:mysql://node6043-itute.ocs.opusinteractive.io/quanlyttth?useUnicode=true&characterEncoding=UTF-8";
		String username = "root";
		String password =  "AIKfna60681";
		
		
		try {
			
			// Load Driver MySQL
			Class.forName("com.mysql.jdbc.Driver");
			
			// create connection
			conn = DriverManager.getConnection(url,username,password);
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return conn;
	}
}

