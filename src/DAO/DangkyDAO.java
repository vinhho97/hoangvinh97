package DAO;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.KhoiTao_HocVienBEAN;

public class DangkyDAO {

	public static boolean InsertCourses(Connection conn, KhoiTao_HocVienBEAN std)
	{
		 PreparedStatement 	ptmt = null;
		 String sql = "insert into students(StudentID,FullName,Male,BirthDay,Phone,Email,Address,State) value (?,?,?,?,?,?,?,?)";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			
			String StudentID = std.getStudentID();
			String FullName = std.getFullName();
			String Male = std.getMale();
			Date BirthDay = std.getBirthDay();
			String Phone = std.getPhone();
			String Email = std.getEmail	();
			String Address = std.getAddress();
			String State  = std.getStatus();
			
			
			ptmt.setString(1,StudentID);
			ptmt.setString(2,FullName);	
			ptmt.setString(3, Male);
			ptmt.setDate(4, (java.sql.Date) BirthDay);
			ptmt.setString(5, Phone);
			ptmt.setString(6, Email);
			ptmt.setString(7, Address);
			ptmt.setString(8, State);
			
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
	public static int Countrow(Connection conn)
	{
		int count = 0;
		
		String sql = "select count(*) from students";
		
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			rs.next();
			
			count = rs.getInt(1);
			
				
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return count;
	}
}