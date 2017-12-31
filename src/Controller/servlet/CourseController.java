package Controller.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.KhoiTao_KhoaHocBEAN;
import DAO.ThuKyLayThongTinKhoaHocDAO;
import DB.CourseConnection;
import java.sql.*;
import java.util.*;

@WebServlet("/CourseController")
public class CourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CourseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		Connection conn = CourseConnection.CreateConnection();
		
		List<KhoiTao_KhoaHocBEAN> list = ThuKyLayThongTinKhoaHocDAO.DisplayCourse(conn);
		
		request.setAttribute("listCourses", list);
		RequestDispatcher rd = request.getRequestDispatcher("/Dangky.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
