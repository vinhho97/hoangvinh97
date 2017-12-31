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

import BEAN.ThuKy_KhoiTaoHopThuDenBEAN;
import BEAN.Users;
import DAO.ThuKyHienNoiDungHopThuDenDAO;
import DB.CourseConnection;


@WebServlet("/ThuKyHienNoiDungThuController")
public class ThuKyHienNoiDungThuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ThuKyHienNoiDungThuController() {
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
		
		Connection conn = CourseConnection. CreateConnection();
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		ThuKy_KhoiTaoHopThuDenBEAN htd = new ThuKy_KhoiTaoHopThuDenBEAN();
		String SupportID = request.getParameter("supportID");
		htd.setSupportID(SupportID);
		List<ThuKy_KhoiTaoHopThuDenBEAN> list = ThuKyHienNoiDungHopThuDenDAO.DisplayMessage(conn, htd);
		request.setAttribute("listNoiDungThu", list);
		request.setAttribute("DangNhap", users);
		request.setAttribute("name", strName);

		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/HienNoiDungHopThuDen.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}