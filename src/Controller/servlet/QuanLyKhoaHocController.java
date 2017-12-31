package Controller.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Course;
import DAO.QuanLyThongTinKhoaHoc;
import DB.DBConnection;


@WebServlet("/QuanLyKhoaHocController")
public class QuanLyKhoaHocController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public QuanLyKhoaHocController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			
			String pageidstr = request.getParameter("pageid");
			
			//ep kieu string sang int de tinh start
			int pageid = Integer.parseInt(pageidstr);
			int count = 5;
			
			//neu pageid = 1 => khong phan trang
			//neu pageid != 1 => phan trang cho no
			
			if (pageid == 1)
			{
				
			}
			else 
			{
				pageid = pageid -1;
				pageid = pageid * count +1;
			}
			Connection conn = DBConnection.CreateConnection();
			List<Course> list = QuanLyThongTinKhoaHoc.DisplayCourse(pageid,count,conn, request);
			int sumrow = QuanLyThongTinKhoaHoc.Countrow(conn);
			
			int maxpageid = (sumrow/count)+1;
			if (request.getCharacterEncoding() == null)
				request.setCharacterEncoding("UTF-8");
			request.setAttribute("maxpageid",maxpageid);
			request.setAttribute("numberpage",Integer.parseInt(pageidstr));
			request.setAttribute("listcourse",list);
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/QuanLyKhoaHoc.jsp");
			rd.forward(request,response);
			conn.close();
		}
		catch (SQLException e)
		{
			request.setAttribute("msgquanlykhoahoc", e.getMessage());
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request,response);
	}	

}
