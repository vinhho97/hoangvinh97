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
import DAO.QuanLyThongTinKhoaHoc;
import DAO.QuanLyThongTinLopHoc;
import DB.DBConnection;


@WebServlet("/ThemLopHocController")
public class ThemLopHocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ThemLopHocController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();		
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");

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
	
		
		boolean kt = QuanLyThongTinLopHoc.InsertClass(conn, Class);
		
		if (kt)
		{

			try 
			{
				request.setAttribute("mscourse","Insert Success");
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
			request.setAttribute("mscourse","Insert Failed");
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyLopHocController?pageid=1");
			rd.forward(request,response);
		}

	}

}
