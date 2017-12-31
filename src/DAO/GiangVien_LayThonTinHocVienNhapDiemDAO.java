package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.GiangVien_ThongTinHocVienNhapDiemBEAN;


public class GiangVien_LayThonTinHocVienNhapDiemDAO {
	
	public static List<GiangVien_ThongTinHocVienNhapDiemBEAN> DisplayInformation(Connection conn, String TeacherID)
	{
		List<GiangVien_ThongTinHocVienNhapDiemBEAN> list =  new  ArrayList<GiangVien_ThongTinHocVienNhapDiemBEAN>();
		
		
		 PreparedStatement 	ptmt = null;
		 String sql = "select students.StudentID, students.FullName, courses.CourseName, class.ClassName from students,courses,class,teach,register where teach.TeacherID= '" + TeacherID +"' and teach.ClassID = class.ClassID and class.CourseID=courses.CourseID and class.ClassID=register.ClassID" + 
		 		" and register.StudentID = students.StudentID";
		 try
		 {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next())
			{
				GiangVien_ThongTinHocVienNhapDiemBEAN cls = new GiangVien_ThongTinHocVienNhapDiemBEAN();
				String StudentID = rs.getString("students.StudentID");
				String FullName  = rs.getString("students.FullName");
				String CourseName = rs.getString("courses.CourseName");
				String ClassName = rs.getString("class.ClassName");
				
				
				cls.setStudentID(StudentID);
				cls.setStudentName(FullName);
				cls.setCourseName(CourseName);
				cls.setClassName(ClassName);
				
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