package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.ThuKy_KhoiTaoGopYBEAN;

public class ThuKyGopY_HoTroDAO {
		public static boolean InsertSupport(Connection conn, ThuKy_KhoiTaoGopYBEAN sup)
		{
			 PreparedStatement 	ptmt = null;
			 String sql = "insert into  support(FullName,Email,Frontpager,Message,State,DateSend) value (?,?,?,?,?,Now())";
			 try
			 {
				ptmt = conn.prepareStatement(sql);
				
				String Name = sup.getName();
				String Email = sup.getEmail();
				String Frontpager = sup.getFrontpager();
				String Message = sup.getMessage();
				String State = sup.getState();
				
				ptmt.setString(1, Name);
				ptmt.setString(2, Email);
				ptmt.setString(3 , Frontpager);
				ptmt.setString(4, Message);
				ptmt.setString(5, State);
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