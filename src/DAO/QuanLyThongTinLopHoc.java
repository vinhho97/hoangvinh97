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
import BEAN.Class;
import java.sql.*;
import java.util.*;


public class QuanLyThongTinLopHoc {
	
	public static int Countrow(Connection conn)
	{
		int count = 0;
		
		
		
		String sql = "select count(*) from class";
		
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

	public static List<Class> DisplayClass (int pageid , int count , Connection conn,HttpServletRequest request)
	{
		List<Class> list = new ArrayList<Class>();
		
		String sql = "select * from class limit "+(pageid-1)+", "+count+"";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			
			while (rs.next())
			{
				Class Class = new Class();
				String classid = rs.getString("ClassID");
				String classname = rs.getString("ClassName");
				int maxcount = rs.getInt("MaxCount");
				String courseid = rs.getString("CourseID");
				String scheduleid = rs.getString("ScheduleID");
				String room = rs.getString("Room");

				Class.setClassID(classid);
				Class.setClassName(classname);
				Class.setMaxCount(maxcount);
				Class.setCourseID(courseid);
				Class.setScheduleID(scheduleid);
				Class.setRoom(room);
				
				
				list.add(Class);
			}
			
			
		} 
		catch (SQLException e) 
		{

			request.setAttribute("msglistcourse",e.getMessage());
		}
		
		return list;
	}

	public static boolean InsertClass(Connection conn, Class Class)
	{
		PreparedStatement ptmt = null;
		
		String sql = "insert into class(ClassID,ClassName,MaxCount,CourseID,ScheduleID,Room) values (?,?,?,?,?,?)";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			
			String ClassID = Class.getClassID();
			String ClassName = Class.getClassName();
			int MaxCount = Class.getMaxCount();
			String CourseID = Class.getCourseID();
			String ScheduleID = Class.getScheduleID();
			String Room = Class.getRoom();
			
			
			ptmt.setString(1,ClassID);
			ptmt.setString(2,ClassName);
			ptmt.setInt(3,MaxCount);
			ptmt.setString(4, CourseID);
			ptmt.setString(5,ScheduleID);
			ptmt.setString(6, Room);
			
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

	public static boolean UpdateClass(HttpServletRequest request, Connection conn, Class Class,String id)
	{
		
		PreparedStatement ptmt = null;
		
		String sql = "update class set ClassName=? , MaxCount = ? , CourseID = ? , ScheduleID = ?, Room = ? where ClassID='"+id+"'";
		
		try 
		{
			ptmt = conn.prepareStatement(sql);
			
			String classname = Class.getClassName();
			ptmt.setString(1,classname);
			
			int maxcount = Class.getMaxCount();
			ptmt.setInt(2,maxcount);
			
			String courseid = Class.getCourseID();
			ptmt.setString(3,courseid);
			
			String scheduleid = Class.getScheduleID();
			ptmt.setString(4, scheduleid);
			
			String room = Class.getRoom();
			ptmt.setString(5, room);
			
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
	
	public static boolean DeleteClass(HttpServletRequest request, Connection conn,String id)
	{
		
		PreparedStatement ptmt = null;
		
		String sql = "Delete from class where ClassID= '"+id+"'";
		
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
