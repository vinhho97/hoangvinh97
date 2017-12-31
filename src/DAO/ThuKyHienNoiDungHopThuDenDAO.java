package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.ThuKy_KhoiTaoHopThuDenBEAN;

public class ThuKyHienNoiDungHopThuDenDAO {
	public static List<ThuKy_KhoiTaoHopThuDenBEAN> DisplayMessage(Connection conn,ThuKy_KhoiTaoHopThuDenBEAN htd)
	{
		List<ThuKy_KhoiTaoHopThuDenBEAN> list =  new  ArrayList<ThuKy_KhoiTaoHopThuDenBEAN>();
		
		
		 PreparedStatement 	ptmt = null;
		 String SupportID = htd.getSupportID();
		 String sql = "select Message,Frontpager,Email from support where SupportID ='" + SupportID + "'";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next())
			{
				ThuKy_KhoiTaoHopThuDenBEAN cls = new ThuKy_KhoiTaoHopThuDenBEAN();
				String Message = rs.getString("Message");
				String Frontpager = rs.getString("Frontpager");
				String Email = rs.getString("Email");
				
				cls.setFrontpager(Frontpager);
				cls.setMessage(Message);
				cls.setEmail(Email);
				
				list.add(cls);
			}
			
			ptmt.close();
			rs.close();
		 } 
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		 return list;
}
}