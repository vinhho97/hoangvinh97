package Controller.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.KhoiTao_LopHocBEAN;
import BEAN.Users;
import DAO.ThuKyLayDuLieu_XuatPhieuDiemDAO;
import DB.CourseConnection;

@WebServlet("/ThuKyXuatPhieuDiemController")
public class ThuKyXuatPhieuDiemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThuKyXuatPhieuDiemController() {
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
		List<KhoiTao_LopHocBEAN> list = ThuKyLayDuLieu_XuatPhieuDiemDAO.DisplayClass(conn);
		
		request.setAttribute("listClass", list);
		request.setAttribute("DangNhap", users);
		request.setAttribute("name", strName);
		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/XuatPhieuDiem.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
