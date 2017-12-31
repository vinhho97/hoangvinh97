package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.KhoiTao_HocVienBEAN;

public class ThuKy_XetPheDuyetDAO {

	public static boolean InsertStudent(Connection conn, KhoiTao_HocVienBEAN std)
	{
		 PreparedStatement 	ptmt = null;
		 
		 try
		 {
			String StudentID = std.getStudentID();
			String sql = "update students set State=" +"'"+ "True" +"'" + "  where StudentID= '" + StudentID +"'" ;
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