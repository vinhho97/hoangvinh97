package DAO;

import java.sql.*;
import java.util.*;

import BEAN.KhoiTao_LopHocBEAN;


public class ThuKyLayDuLieu_XuatPhieuDiemDAO {

	public static List<KhoiTao_LopHocBEAN> DisplayClass(Connection conn)
	{
		List<KhoiTao_LopHocBEAN> list =  new  ArrayList<KhoiTao_LopHocBEAN>();
		
		
		 PreparedStatement 	ptmt = null;
		 String sql = "select ClassID,ClassName,MaxCount,CourseName from class,courses where class.CourseID=courses.CourseID";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next())
			{
				KhoiTao_LopHocBEAN cls = new KhoiTao_LopHocBEAN();
				String ClassID = rs.getString("ClassID");  
				String ClassName = rs.getString("ClassName");
				int MaxCount = rs.getInt("MaxCount");
				String CourseName = rs.getString("CourseName");
				
				cls.setClassID(ClassID);
				cls.setClassName(ClassName);
				cls.setMaxCount(MaxCount);
				cls.setCourseName(CourseName);
				
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
