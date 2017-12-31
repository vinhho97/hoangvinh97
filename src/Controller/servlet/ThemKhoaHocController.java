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


@WebServlet("/ThemKhoaHocController")
public class ThemKhoaHocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ThemKhoaHocController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/View/Admin/QuanLyKhoaHoc.jsp");
		rd.forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();		
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");

		String courseID = request.getParameter("courseid");
		String courseName = request.getParameter("coursename");
		double coursemoney = Double.parseDouble(request.getParameter("coursemoney"));
		double courseTime = Double.parseDouble(request.getParameter("coursetime"));
		
		Course course = new Course();
		course.setCourseID(courseID);
		course.setCourseName(courseName);
		course.setCoursemoney(coursemoney);
		course.setCourseTime(courseTime);
		
		
		boolean kt = QuanLyThongTinKhoaHoc.InsertCourse(conn, course);
		
		if (kt)
		{
			
			
			try 
			{
				request.setAttribute("mscourse","Insert Success");
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
			request.setAttribute("mscourse","Insert Failed");
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyKhoaHocController?pageid=1");
			rd.forward(request,response);
		}
	}

}
