package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import BEAN.KhoiTao_ThuKyBEAN;

public class Login_ThongTinThuKyDAO {

	public static KhoiTao_ThuKyBEAN DisplaySecratary(Connection conn, String user)
	{
		KhoiTao_ThuKyBEAN Tky = new KhoiTao_ThuKyBEAN();
		PreparedStatement 	ptmt = null;
		String sql = "select * from users where UserID = '" + user + "'";
		try
		{
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				String SecretaryID = rs.getString("UserID");
				String FullName = rs.getString("FullName");
				String Male = rs.getString("Male");
				Date BirthDay = rs.getDate("BirthDay");
				String Phone = rs.getString("Phone");
				String Email = rs.getString("Email");
				String Address = rs.getString("Address");
				
				Tky.setSecretaryID(SecretaryID);
				Tky.setFullName(FullName);
				Tky.setMale(Male);
				Tky.setBirthDay(BirthDay);
				Tky.setPhone(Phone);
				Tky.setEmail(Email);
				Tky.setAddress(Address);
			}
			ptmt.close();
			rs.close();
		}
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		
		
		return Tky;
	}
}
