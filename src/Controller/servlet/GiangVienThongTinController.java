package Controller.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.KhoiTao_ThuKyBEAN;
import BEAN.Users;
import DAO.LoginDAO;
import DAO.Login_ThongTinThuKyDAO;
import DB.CourseConnection;

@WebServlet("/GiangVienThongTinController")
public class GiangVienThongTinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GiangVienThongTinController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = CourseConnection.CreateConnection();
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String role = "GV";
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		
		boolean kt = LoginDAO.Validate(role,strUser, strPass,conn);
		if(kt)
		{
			KhoiTao_ThuKyBEAN GiangVien = new KhoiTao_ThuKyBEAN();
			
			GiangVien = Login_ThongTinThuKyDAO.DisplaySecratary(conn, strUser);
			request.setAttribute("ThongTinGiangVien", GiangVien);
			request.setAttribute("DangNhap", users);
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_ThongTin.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "Đăng nhập không thành công.");
			RequestDispatcher rd = request.getRequestDispatcher("DangNhap.jsp");
			rd.forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = CourseConnection.CreateConnection();
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strRole = request.getParameter("RoleGV");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		
		boolean kt = LoginDAO.Validate(strRole,strUser, strPass,conn);
		if(kt)
		{
			KhoiTao_ThuKyBEAN GiangVien = new KhoiTao_ThuKyBEAN();
			
			GiangVien = Login_ThongTinThuKyDAO.DisplaySecratary(conn, strUser);
			request.setAttribute("ThongTinGiangVien", GiangVien);
			request.setAttribute("DangNhap", users);
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_ThongTin.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "Đăng nhập không thành công.");
			RequestDispatcher rd = request.getRequestDispatcher("DangNhap.jsp");
			rd.forward(request, response);
		}
	}

}
