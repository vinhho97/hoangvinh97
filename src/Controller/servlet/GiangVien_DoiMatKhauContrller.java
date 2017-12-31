package Controller.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Users;
import DAO.DoiMatKhauDAO;
import DAO.LoginDAO;
import DB.CourseConnection;


@WebServlet("/GiangVien_DoiMatKhauContrller")
public class GiangVien_DoiMatKhauContrller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GiangVien_DoiMatKhauContrller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strName = request.getParameter("name");
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		request.setAttribute("DangNhap", users);
		request.setAttribute("name", strName);
		RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_ThayDoiMatKhau.jsp");
		rd.forward(request, response);		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = CourseConnection.CreateConnection();
		String strUser = request.getParameter("UserName");
		String strPass = request.getParameter("PassWord");
		String strPassNew = request.getParameter("Matkhau");
		String strName = request.getParameter("name");
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		request.setAttribute("name", strName);
		request.setAttribute("DangNhap", users);
		boolean kt = LoginDAO.Validate("GV",strUser, strPass,conn);
		if(kt)
		{
			boolean Ktra_update = DoiMatKhauDAO.updateUser(conn, strPassNew, strUser);
			if(Ktra_update)
			{
				request.setAttribute("msg", "Đổi mật khẩu thành công.");
				RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_ThayDoiMatKhau.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("msg", "Đổi mật khẩu không thành công.");
				RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_ThayDoiMatKhau.jsp");
				rd.forward(request, response);
			}
		
			
			
		}
		else
		{
			request.setAttribute("msg", "Mật khẩu cũ không đúng.");
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_ThayDoiMatKhau.jsp");
			rd.forward(request, response);
		}
				
		
		
	}
}

