package Controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.ThuKy_KhoiTaoGopYBEAN;
import DAO.ThuKyGopY_HoTroDAO;
import DB.CourseConnection;
import java.sql.*;



@WebServlet("/LienHeGopYController")
public class LienHeGopYController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LienHeGopYController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn =  CourseConnection. CreateConnection();
		
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		
		String Name = request.getParameter("HoTen");
		String Email = request.getParameter("Email");
		String Frontpager = request.getParameter("TieuDe");
		String Message = request.getParameter("NoiDung");
		String State = "false";
		
		ThuKy_KhoiTaoGopYBEAN sup = new ThuKy_KhoiTaoGopYBEAN();
		sup.setName(Name);
		sup.setEmail(Email);
		sup.setFrontpager(Frontpager);
		sup.setMessage(Message);
		sup.setState(State);
		
		boolean kt = ThuKyGopY_HoTroDAO.InsertSupport(conn, sup);
		if(kt)
		{		
			try
			{
				PrintWriter out = response.getWriter();
				out.println("Succes");
				
				conn.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}	
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/Test.jsp");
			rd.forward(request, response);
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
