package DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import BEAN.ThuKy_KhoiTaoPheDuyetHocVienBEAN;

public class ThuKyPheDuyetDAO {
	
		public static List<ThuKy_KhoiTaoPheDuyetHocVienBEAN>  DisplayStudents(Connection conn)
		{
			List<ThuKy_KhoiTaoPheDuyetHocVienBEAN> listStudents = new ArrayList<ThuKy_KhoiTaoPheDuyetHocVienBEAN>();
			 PreparedStatement 	ptmt = null;
				 String sql = "select students.StudentID,students.FullName,students.Male,courses.CourseName,class.ClassName from students,class,courses,register where students.State= 'false'  and students.StudentID=register.StudentID and register.ClassID = class.ClassID and class.CourseID=courses.CourseID "  ;
			 try
			 {
				ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				
				while(rs.next())
				{
					ThuKy_KhoiTaoPheDuyetHocVienBEAN Std = new ThuKy_KhoiTaoPheDuyetHocVienBEAN();
					String StudentID = rs.getString("students.StudentID");
					String FullName = rs.getString("students.FullName");
					String Male = rs.getString("students.Male");
					String CourseName = rs.getString("courses.CourseName");
					String ClassName = rs.getString("class.ClassName");
					
					
					Std.setStudentID(StudentID);
					Std.setFullName(FullName);
					Std.setMale(Male);
					Std.setCourseName(CourseName);
					Std.setClassName(ClassName);
					listStudents.add(Std);
				}
				
				ptmt.close();
				rs.close();
			 } 
			 catch (SQLException e) 
			 {
				// TODO Auto-generated catch block
				e.printStackTrace();
			 }
			 return listStudents;
		}

}
