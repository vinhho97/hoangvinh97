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

import BEAN.Students;
import DAO.QuanLyThongTinHocVien;
import DB.DBConnection;

@WebServlet("/QuanLyHocVienController")
public class QuanLyHocVienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public QuanLyHocVienController() {
        super();
        // TODO Auto-generated constructor stub
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
			List<Students> list = QuanLyThongTinHocVien.DisplayStudent(pageid, count, conn, request);
			
			int sumrow = QuanLyThongTinHocVien.Countrow(conn);
			
			int maxpageid = (sumrow/count)+1;
			
			request.setAttribute("maxpageid",maxpageid);
			request.setAttribute("numberpage",Integer.parseInt(pageidstr));
			request.setAttribute("liststudent",list);
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/QuanLyHocVien.jsp");
			rd.forward(request,response);
			conn.close();
		}
		catch (SQLException e)
		{
			request.setAttribute("msgquanlyhocvien", e.getMessage());
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
