package Controller.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Course;
import DAO.QuanLyThongTinKhoaHoc;
import DB.DBConnection;


@WebServlet("/SuaKhoaHocController")
public class SuaKhoaHocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SuaKhoaHocController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Connection conn = DBConnection.CreateConnection();		
		

		
	
		String courseID = request.getParameter("CourseID");
		String courseName = request.getParameter("CourseName");
		double coursemoney = Double.parseDouble(request.getParameter("CourseMoney"));
		double courseTime = Double.parseDouble(request.getParameter("CourseTime"));
		
		Course course = new Course();
		course.setCourseID(courseID);
		course.setCourseName(courseName);
		course.setCoursemoney(coursemoney);
		course.setCourseTime(courseTime);
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		boolean kt = QuanLyThongTinKhoaHoc.UpdateCourse(request, conn, course,courseID);
		
		if (kt)
		{
			
			
			try 
			{
				
				RequestDispatcher rd = request.getRequestDispatcher("QuanLyKhoaHocController?pageid=1");
				rd.forward(request,response);
				conn.close();
			} 
			catch (SQLException e) 
			{
				
				e.printStackTrace();
			}
		}
		else 
		{
			request.setAttribute("mscourse","Update Failed");
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyKhoaHocController?padeid=1");
			rd.forward(request,response);
		}
		
	}

}
