package Controller.servlet;

import java.io.IOException;
import java.sql.Connection;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.KhoiTao_ThoiKhoaBieuBEAN;

import BEAN.Users;
import DAO.GiaoVien_LichGiangDayDAO;

import DB.CourseConnection;


@WebServlet("/GiangVien_LichGiangDayController")
public class GiangVien_LichGiangDayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GiangVien_LichGiangDayController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = CourseConnection.CreateConnection();
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strName = request.getParameter("name");
		
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		KhoiTao_ThoiKhoaBieuBEAN TKB = GiaoVien_LichGiangDayDAO.DisplayShedule(conn, strUser);
		
		request.setAttribute("LichGiangDay", TKB);
		request.setAttribute("DangNhap", users);
		request.setAttribute("name", strName);
		
		if(TKB.getRoom().equals("A101") && TKB.getLearnDay().equals("Chẵn"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay.jsp");
			rd.forward(request, response);
		}
		else if(TKB.getRoom().equals("A102") && TKB.getLearnDay().equals("Chẵn"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay1.jsp");
			rd.forward(request, response);
		}	
		else if(TKB.getRoom().equals("A103") && TKB.getLearnDay().equals("Chẵn"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay2.jsp");
			rd.forward(request, response);
		}
		else if(TKB.getRoom().equals("A104") && TKB.getLearnDay().equals("Chẵn"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay4.jsp");
			rd.forward(request, response);
		}	
		else if(TKB.getRoom().equals("A101") && TKB.getLearnDay().equals("Lẻ"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay5.jsp");
			rd.forward(request, response);
		}	
		else if(TKB.getRoom().equals("A102") && TKB.getLearnDay().equals("Lẻ"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay6.jsp");
			rd.forward(request, response);
		}	
		else if(TKB.getRoom().equals("A103") && TKB.getLearnDay().equals("Lẻ"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_LichGiangDay7.jsp");
			rd.forward(request, response);
		}	
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
