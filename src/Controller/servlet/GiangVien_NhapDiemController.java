package Controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.GiangVien_ThongTinHocVienNhapDiemBEAN;
import BEAN.Users;
import DAO.GiangVien_LayThonTinHocVienNhapDiemDAO;
import DB.CourseConnection;

@WebServlet("/GiangVien_NhapDiemController")
public class GiangVien_NhapDiemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public GiangVien_NhapDiemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = CourseConnection.CreateConnection();

		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		String strName = request.getParameter("name");
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		int i = 0;
		request.setAttribute("DangNhap", users);
		request.setAttribute("Add", i);
		request.setAttribute("STT", i);
		request.setAttribute("Dem", i);
		
		request.setAttribute("name", strName);
		List<GiangVien_ThongTinHocVienNhapDiemBEAN> list = GiangVien_LayThonTinHocVienNhapDiemDAO.DisplayInformation(conn, strUser);

		request.setAttribute("NhapDiemHocVien", list);
		RequestDispatcher rd = request.getRequestDispatcher("View/GiangVien/GiangVien_NhapDiem.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = CourseConnection.CreateConnection();

		String studentid = request.getParameter("studentid");
		String grade = request.getParameter("grade");
		
		PrintWriter out = response.getWriter();
		out.println(studentid);
		out.println(grade);
		
	}

}
