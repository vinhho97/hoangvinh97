package DAO;

import java.sql.*;
import java.util.*;
import java.util.Date;

import BEAN.KhoiTao_KhoaHocBEAN;
public class ThuKyLayThongTinKhoaHocDAO {

		public static List<KhoiTao_KhoaHocBEAN> DisplayCourse (Connection conn)
		{
			List<KhoiTao_KhoaHocBEAN> list = new ArrayList<KhoiTao_KhoaHocBEAN>();
			
			String sql = "SELECT * FROM courses;";
			try
			{
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ResultSet rs =  ptmt.executeQuery();
				
				while(rs.next())
				{
					KhoiTao_KhoaHocBEAN course = new KhoiTao_KhoaHocBEAN();
					String CourseID = rs.getString("CourseID");
					String CourseName = rs.getString("CourseName");
					double CourseTime = rs.getDouble("CourseTime");
					double CourseMoney = rs.getDouble("CourseMoney");
					Date OpenDay = rs.getDate("OpenDay");
						
					
					course.setCourseID(CourseID);
					course.setCourseName(CourseName);
					course.setCourseTime(CourseTime);
					course.setCourseMoney(CourseMoney);
					course.setOpenday(OpenDay);
					
					list.add(course);
				}
			}
			catch (SQLException e) 
			 {
				// TODO Auto-generated catch block
				e.printStackTrace();
			 }
			
			return list;
		}
}
		