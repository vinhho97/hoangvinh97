package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDAO {
		public static boolean Validate(String Role ,String UserName, String PassWord, Connection conn)
		{
			
			PreparedStatement 	ptmt = null;
			String sql = "select * from accounts";
			boolean t = false;
			try {
				ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				while(rs.next())
				{					
					String user = rs.getString("Id");
					String password = rs.getString("Password");
					String role = rs.getString("Role");
					if(UserName.equals(user) && PassWord.equals(password) && Role.equals(role))
					{
						t = true;
					}
				}
				ptmt.close();
				rs.close();
			}
			catch (SQLException e) 
			 {
				// TODO Auto-generated catch block
				e.printStackTrace();
			 }
			
			return t;
		}
}
