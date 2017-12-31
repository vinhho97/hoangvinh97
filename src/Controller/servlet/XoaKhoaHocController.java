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

import DAO.QuanLyThongTinKhoaHoc;
import DB.DBConnection;


@WebServlet("/XoaKhoaHocController")
public class XoaKhoaHocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XoaKhoaHocController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.CreateConnection();		
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");

		String courseID = request.getParameter("cid");
		
				
		boolean kt = QuanLyThongTinKhoaHoc.DeleteCourse(request, conn, courseID);
		
		if (kt)
		{
			
			
			try 
			{
				request.setAttribute("mscourse","Delete Success");
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
			request.setAttribute("mscourse","Delete Failed");
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyKhoaHocController?pageid=1");
			rd.forward(request,response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				doGet(request, response);
	}

}
