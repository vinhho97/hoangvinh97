package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import BEAN.KhoiTao_ThoiKhoaBieuBEAN;


public class GiaoVien_LichGiangDayDAO {
		
	public static KhoiTao_ThoiKhoaBieuBEAN DisplayShedule(Connection conn, String user)
	{
		KhoiTao_ThoiKhoaBieuBEAN TKB = new KhoiTao_ThoiKhoaBieuBEAN();
		PreparedStatement 	ptmt = null;
		String sql = "select BeginTime, EndTime,LearnDay,Room,FullName,CourseName from teach,class,schedule,courses,users "
				+ "where teach.TeacherID = '" + user + "' and teach.ClassID = class.ClassID and class.ScheduleID=schedule.ScheduleID and class.CourseID = courses.CourseID and users.UserID=teach.TeacherID         ";
		try
		{
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next())
			{
				java.sql.Time BenginTime = rs.getTime("BeginTime");
				java.sql.Time EndTime = rs.getTime("EndTime");
				String LeanrDay = rs.getString("LearnDay");
				String Room = rs.getString("Room");
				String TeacherName = rs.getString("FullName");
				String CourseName = rs.getString("CourseName");
				
				
				TKB.setBeginTime(BenginTime);
				TKB.setEndTime(EndTime);
				TKB.setLearnDay(LeanrDay);
				TKB.setRoom(Room);
				TKB.setTeacherName(TeacherName);
				TKB.setCourseName(CourseName);
			}
			ptmt.close();
			rs.close();
		}
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		
		
		return TKB;
	
}
}