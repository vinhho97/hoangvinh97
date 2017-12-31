package Controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import BEAN.ThuKy_KhoiTaoPheDuyetHocVienBEAN;
import BEAN.Users;
import DAO.ThuKyPheDuyetDAO;
import DB.CourseConnection;


import java.sql.*;
import java.util.*;

@WebServlet("/ThuKyPheDuyetController")
public class ThuKyPheDuyetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThuKyPheDuyetController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = CourseConnection.CreateConnection();
		List<ThuKy_KhoiTaoPheDuyetHocVienBEAN> listStudents = ThuKyPheDuyetDAO.DisplayStudents(conn);
		
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strName = request.getParameter("name");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		request.setAttribute("DangNhap", users);
		request.setAttribute("listStudents", listStudents);
		request.setAttribute("name", strName);
		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/PheDuyetHocVien.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
