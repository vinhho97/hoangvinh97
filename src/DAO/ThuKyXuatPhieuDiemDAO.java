package DAO;
import java.sql.*;
import java.util.*;

import BEAN.ThuKy_KhoiTaoXuatPhieuDiemBEAN;
public class ThuKyXuatPhieuDiemDAO {

		public static List<ThuKy_KhoiTaoXuatPhieuDiemBEAN> DisplayPhieuDiem(Connection conn, ThuKy_KhoiTaoXuatPhieuDiemBEAN xpd)
		{
			List<ThuKy_KhoiTaoXuatPhieuDiemBEAN> list = new ArrayList<ThuKy_KhoiTaoXuatPhieuDiemBEAN>();
			PreparedStatement 	ptmt = null;
			String ClassID =  xpd.getClassID();
						
			String sql = "select students.StudentID,students.FullName,students.Male,courses.CourseName,transcript.Mark  from students,courses,class,transcript where class.ClassID='" +ClassID + "' and transcript.ClassID = class.ClassID and class.CourseID= courses.CourseID and transcript.StudentID = students.StudentID and students.State='True'";
			try
			{
				ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				
				while(rs.next())
				{
					ThuKy_KhoiTaoXuatPhieuDiemBEAN lstPhieuDiem = new ThuKy_KhoiTaoXuatPhieuDiemBEAN();
					
					String StudentID = rs.getString("students.StudentID");
					String FullName = rs.getString("students.FullName");
					String Male = rs.getString("students.Male");
					String CourseName = rs.getString("courses.CourseName");
					double Mark = rs.getDouble("transcript.Mark");
					
					lstPhieuDiem.setStudentID(StudentID);
					lstPhieuDiem.setStudentName(FullName);
					lstPhieuDiem.setMale(Male);
					lstPhieuDiem.setCourseName(CourseName);
					lstPhieuDiem.setMark(Mark);
					
					list.add(lstPhieuDiem);
					
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