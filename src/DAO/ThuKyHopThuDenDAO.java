package DAO;

import java.sql.*;
import java.util.*;
import java.sql.Date;
import BEAN.ThuKy_KhoiTaoHopThuDenBEAN;


public class ThuKyHopThuDenDAO {

	public static List<ThuKy_KhoiTaoHopThuDenBEAN> DisplayMessage(Connection conn, int Start, int Count)
	{
		List<ThuKy_KhoiTaoHopThuDenBEAN> list =  new  ArrayList<ThuKy_KhoiTaoHopThuDenBEAN>();
		
		
		 PreparedStatement 	ptmt = null;
		 String sql = "select * from support limit " + (Start-1) + ", " + Count + "";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next())
			{
				ThuKy_KhoiTaoHopThuDenBEAN cls = new ThuKy_KhoiTaoHopThuDenBEAN();
				String SupportID = rs.getString("SupportID");
				String FullName = rs.getString("FullName");
				String Frontpager = rs.getString("Frontpager");
				Date DateSend = rs.getDate("DateSend");
				
				cls.setSupportID(SupportID);
				cls.setFullName(FullName);
				cls.setFrontpager(Frontpager);
				cls.setDateSend(DateSend);
				
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

	public static int Countrow(Connection conn)
	{
		int Count =0;
		
		 PreparedStatement 	ptmt = null;
		 String sql = "select count(*) from support";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			rs.next();
			
			Count = rs.getInt(1);
			
			ptmt.close();
				rs.close();
		 } 
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		
		return Count;
	}
		
	}
