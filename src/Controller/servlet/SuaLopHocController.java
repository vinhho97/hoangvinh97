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

import BEAN.Class;
import BEAN.Course;
import DAO.QuanLyThongTinKhoaHoc;
import DAO.QuanLyThongTinLopHoc;
import DB.DBConnection;


@WebServlet("/SuaLopHocController")
public class SuaLopHocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public SuaLopHocController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = DBConnection.CreateConnection();		
		String classid = request.getParameter("classid");
		String classname = request.getParameter("classname");
		int maxcount = Integer.parseInt(request.getParameter("maxcount"));
		String courseid = request.getParameter("courseid");
		String scheduleid = request.getParameter("scheduleid");
		String room = request.getParameter("room");
		
		Class Class = new Class();
		Class.setClassID(classid);
		Class.setClassName(classname);
		Class.setMaxCount(maxcount);
		Class.setCourseID(courseid);
		Class.setScheduleID(scheduleid);
		Class.setRoom(room);
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		boolean kt = QuanLyThongTinLopHoc.UpdateClass(request, conn, Class,classid);
		
		if (kt)
		{
			
			
			try 
			{
				
				RequestDispatcher rd = request.getRequestDispatcher("QuanLyLopHocController?pageid=1");
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
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyLopHocController?pageid=1");
			rd.forward(request,response);
		}
		
	}

}