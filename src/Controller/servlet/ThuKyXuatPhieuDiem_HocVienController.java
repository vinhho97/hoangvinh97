package Controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.ThuKy_KhoiTaoXuatPhieuDiemBEAN;
import BEAN.Users;
import DAO.ThuKyXuatPhieuDiemDAO;
import DB.CourseConnection;
import java.sql.*;
import java.util.*;
@WebServlet("/ThuKyXuatPhieuDiem_HocVienController")
public class ThuKyXuatPhieuDiem_HocVienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThuKyXuatPhieuDiem_HocVienController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strName = request.getParameter("name");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		
		Connection conn = CourseConnection.CreateConnection();
		String ClassID = request.getParameter("classID");
		ThuKy_KhoiTaoXuatPhieuDiemBEAN xpd = new ThuKy_KhoiTaoXuatPhieuDiemBEAN();
		xpd.setClassID(ClassID);
		List<ThuKy_KhoiTaoXuatPhieuDiemBEAN> list = ThuKyXuatPhieuDiemDAO.DisplayPhieuDiem(conn, xpd);
		request.setAttribute("listXuatPhieuDiem", list);
		request.setAttribute("DangNhap", users);
		request.setAttribute("name", strName);
		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/HocVienXuatPhieuDiem.jsp");
		rd.forward(request, response);
	}
}