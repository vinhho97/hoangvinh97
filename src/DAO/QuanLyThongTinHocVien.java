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

import BEAN.Students;
import java.sql.*;
import java.util.*;

public class QuanLyThongTinHocVien {
	

	
	
	public static int Countrow(Connection conn)
	{
		int count = 0;
		
		
		
		String sql = "select count(*) from students";
		
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


	public static List<Students> DisplayStudent(int pageid, int count, Connection conn, HttpServletRequest request) {
		List<Students> list = new ArrayList<Students>();
		
		String sql = "select * from students limit "+(pageid-1)+", "+count+"";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ResultSet rs = ptmt.executeQuery();
			
			
			while (rs.next())
			{
				Students student = new Students();
				String studentid = rs.getString("StudentID");
				String fullname = rs.getString("FullName");
				String male = rs.getString("Male");
				String phone = rs.getString("Phone");
				String email = rs.getString("Email");
				String address = rs.getString("Address");
				String birthday = rs.getString("BirthDay");
				
				student.setStudentID(studentid);
				student.setFullname(fullname);
				student.setMale(male);
				student.setAddress(address);
				student.setPhone(phone);
				student.setEmail(email);
				student.setBirthDay(birthday);
				
				list.add(student);
			}
			
			
		} 
		catch (SQLException e) 
		{

			request.setAttribute("msgliststudent",e.getMessage());
		}
		
		return list;
	}


	
}