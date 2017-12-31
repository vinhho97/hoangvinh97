package Controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import DB.DBConnection;
import java.sql.*;
import java.util.*;

@WebServlet("/Homeforward")
public class Adminforward extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public Adminforward() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		if(strUser.equals("admin") &&strPass.equals("12345678"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("View/Admin/Home.jsp");
			rd.forward(request,response);
		}
		else
		{
			request.setAttribute("msg", "Đăng nhập không thành công.");
			RequestDispatcher rd = request.getRequestDispatcher("DangNhap.jsp");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
