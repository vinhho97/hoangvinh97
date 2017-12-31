package Controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.ThuKy_KhoiTaoHopThuDenBEAN;
import BEAN.Users;
import DAO.ThuKyHopThuDenDAO;
import DB.CourseConnection;

import java.sql.*;
import java.util.*;


@WebServlet("/HopThuDenController")
public class HopThuDenController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HopThuDenController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = CourseConnection.CreateConnection();
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strpageid = request.getParameter("pageid");
		String strName = request.getParameter("name");
		
		int pageid = Integer.parseInt(strpageid);
		int count =7;
		if(pageid==1)
		{
			
		}
		else
		{
			pageid = pageid -1;
			pageid = pageid*count + 1;
		}
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		
		List<ThuKy_KhoiTaoHopThuDenBEAN> list = ThuKyHopThuDenDAO.DisplayMessage(conn,pageid,count);
		
		
		int sumrow = ThuKyHopThuDenDAO.Countrow(conn);
		int maxpageid = (sumrow/count)+1;
		request.setAttribute("name", strName);
		request.setAttribute("maxpageid", maxpageid);
		request.setAttribute("listMessage", list);
		request.setAttribute("DangNhap", users);
		request.setAttribute("numberpage", Integer.parseInt(strpageid));
		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/HopThuDen.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
