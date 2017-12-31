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

import BEAN.KhoiTao_HocVienBEAN;
import BEAN.Users;
import DAO.ThuKy_XetPheDuyetDAO;
import DB.CourseConnection;

@WebServlet("/ThuKy_XetPheDuyetController")
public class ThuKy_XetPheDuyetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ThuKy_XetPheDuyetController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		
		Connection conn = CourseConnection. CreateConnection();
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		
		String StudentID = request.getParameter("studentID");
		
		
	
		KhoiTao_HocVienBEAN std = new KhoiTao_HocVienBEAN();
		
		std.setStudentID(StudentID);
		
		
		boolean kt = ThuKy_XetPheDuyetDAO.InsertStudent(conn, std);
		if(kt)
		{		
			try
			{
				request.setAttribute("DangNhap", users);
				RequestDispatcher rd = request.getRequestDispatcher("ThuKyPheDuyetController");
				rd.forward(request, response);
				
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
