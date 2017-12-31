package DAO;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import BEAN.Course;


import java.sql.*;
import java.util.*;

public class QuanLyThongTinKhoaHoc {
	
	public static int Countrow(Connection conn)
	{
		int count = 0;
		
		
		
		String sql = "select count(*) from courses";
		
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			rs.next();
			
			count = rs.getInt(1);
			
				
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return count;
	}

	public static List<Course> DisplayCourse (int pageid, int count , Connection conn,HttpServletRequest request)
	{
		List<Course> list = new ArrayList<Course>();
		
		String sql = "select * from courses limit "+(pageid-1)+", "+count+"";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			
			while (rs.next())
			{
				Course course = new Course();
				String courseID = rs.getString("CourseID");
				String coursename = rs.getString("CourseName");
				double coursetime = rs.getDouble("CourseTime");
				double coursemoney = rs.getDouble("Coursemoney");
				
				
				
				course.setCourseID(courseID);
				course.setCourseName(coursename);
				course.setCourseTime(coursetime);
				course.setCoursemoney(coursemoney);
				
				
				
				list.add(course);
			}
			
			
		} 
		catch (SQLException e) 
		{

			request.setAttribute("msglistcourse",e.getMessage());
		}
		
		return list;
	}
	
	public static boolean InsertCourse(Connection conn, Course course)
	{
		PreparedStatement ptmt = null;
		
		String sql = "insert into courses(CourseID,CourseName,CourseTime,CourseMoney) values (?,?,?,?)";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			
			String CourseID = course.getCourseID();
			String CourseName = course.getCourseName();
			double CourseTime = course.getCourseTime();
			double CourseMoney = course.getCoursemoney();
			
			
			ptmt.setString(1,CourseID);
			ptmt.setString(2,CourseName);
			ptmt.setDouble(3,CourseTime);
			ptmt.setDouble(4,CourseMoney);
			
			
			int kt = ptmt.executeUpdate();
			
			if (kt != 0)
			{
				return true;
			}
			
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return false;
		
	}

	public static boolean UpdateCourse(HttpServletRequest request, Connection conn, Course course,String id)
	{
		
		PreparedStatement ptmt = null;
		
		String sql = "update courses set CourseName=? , CourseTime = ? , CourseMoney = ? where CourseID='"+id+"'";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			
			String coursename = course.getCourseName();
			ptmt.setString(1,coursename);
			
			double coursetime = course.getCourseTime();
			ptmt.setDouble(2,coursetime);
			
			double coursemoney = course.getCoursemoney();
			ptmt.setDouble(3,coursemoney);
			
			int kt = ptmt.executeUpdate();
			
			if (kt != 0)
			{
				return true;
			}
			
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			request.setAttribute("mscourse",e.getMessage());
		}
		
		return false;	
	}
	
	public static boolean DeleteCourse(HttpServletRequest request, Connection conn,String id)
	{
		
		PreparedStatement ptmt = null;
		
		String sql = "Delete from courses where CourseID= '"+id+"'";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			int kt = ptmt.executeUpdate();
			
			if (kt != 0)
			{
				return true;
			}
			
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			request.setAttribute("mscourse",e.getMessage());
		}
		
		return false;	
	}

}
