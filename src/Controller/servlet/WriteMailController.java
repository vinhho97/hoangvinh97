package Controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Users;

@WebServlet("/WriteMailController")
public class WriteMailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WriteMailController() {
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
		request.setAttribute("DangNhap", users);
		request.setAttribute("name", strName);
		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/WriteMail.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
