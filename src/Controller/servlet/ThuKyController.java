
package Controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Users;

@WebServlet("/ThuKyController")
public class ThuKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ThuKyController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strUser = request.getParameter("user");
		String strPass = request.getParameter("pass");
		
		Users users = new Users();
		users.setUserName(strUser);
		users.setPassWord(strPass);
		request.setAttribute("DangNhap", users);
		RequestDispatcher rd = request.getRequestDispatcher("View/ThuKy/ThuKy_ThongTin.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
