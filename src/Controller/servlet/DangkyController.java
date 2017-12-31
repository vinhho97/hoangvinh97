package Controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.KhoiTao_HocVienBEAN;
import DAO.DangkyDAO;
import DB.CourseConnection;
import java.util.Random;




@WebServlet("/DangkyController")
public class DangkyController extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       

    public DangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = CourseConnection. CreateConnection();
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		
		Random rand = new Random();
		int SLHV = DangkyDAO.Countrow(conn);
		int  n = rand.nextInt(99-SLHV + 1) + SLHV;
		String StudentID = "HV0"+ String.valueOf(n);
		String FullName = request.getParameter("HoVaTen");
		String Male = "Nữ";
		String birthday = request.getParameter("NgaySinh");;
		String Phone = request.getParameter("DienThoai");
		String Email = request.getParameter("Email");
		String Address = request.getParameter("QueQuan");
		String State = "false";
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		Date BirthDay =Date.valueOf(birthday);
		
		KhoiTao_HocVienBEAN std = new KhoiTao_HocVienBEAN();
		
		std.setStudentID(StudentID);
		std.setFullName(FullName);
		std.setMale(Male);
		std.setBirthDay(BirthDay);
		std.setPhone(Phone);
		std.setEmail(Email);
		std.setAddress(Address);
		std.setStatus(State);
		
		
		boolean kt = DangkyDAO.InsertCourses(conn, std);
		if(kt)
		{		
			try
			{
				PrintWriter out = response.getWriter();
				out.println(FullName);
				
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
		Connection conn = CourseConnection.CreateConnection();
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		Random rand = new Random();
		int SLHV = DangkyDAO.Countrow(conn);
		int  n = rand.nextInt(99-SLHV + 1) + SLHV;
		String StudentID = "HV0"+ String.valueOf(n);
		String FullName = request.getParameter("HoVaTen");
		String Male = "Nam";
		String birthday = request.getParameter("NgaySinh");;
		String Phone = request.getParameter("DienThoai");
		String Email = request.getParameter("Email");
		String Address = request.getParameter("QueQuan");
		String State = "false";
		
		Date BirthDay =Date.valueOf(birthday);
		
		KhoiTao_HocVienBEAN std = new KhoiTao_HocVienBEAN();
		
		std.setStudentID(StudentID);
		std.setFullName(FullName);
		std.setMale(Male);
		std.setBirthDay(BirthDay);
		std.setPhone(Phone);
		std.setEmail(Email);
		std.setAddress(Address);
		std.setStatus(State);
		
		
		boolean kt = DangkyDAO.InsertCourses(conn, std);
		if(kt)
		{		
			try
			{
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				out.println("<html><head><title></title></head>");
				out.println("<body>");
				out.println("<h1>"+"Register Success"+"</h1>");
				out.println("</body>");
				
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		else
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			out.println("<html><head><title></title></head>");
			out.println("<body>");
			out.println("<h1>"+"Register Failed"+"</h1>");
			out.println("</body>");

		}
	}



}
