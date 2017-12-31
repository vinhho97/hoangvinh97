package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DoiMatKhauDAO {
	public static boolean updateUser(Connection conn, String PassNew, String user)
	{
		 PreparedStatement 	ptmt = null;
		 String sql = "update accounts set Password='" + PassNew + "' where Id ='" + user+"'";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			
			int kt = ptmt.executeUpdate();
			if(kt !=0)
			{

				return true;
			}
			ptmt.close();
		 } 
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		 return false;
	}
	
}