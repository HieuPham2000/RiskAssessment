package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.impl.UserDAOImpl;
import model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null) {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/loginView.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/system"); 
		}
		
//		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/loginView.jsp");
//		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserDAO userDAO = new UserDAOImpl();
		User user = userDAO.get(username, password);
		
		if(user == null) {
			String errorMessage = "Tên đăng nhập hoặc Mật khẩu không hợp lệ";
			 
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/loginView.jsp");
            dispatcher.forward(request, response);
            return;
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect(request.getContextPath() + "/system"); 
		}
		
		
	}

}
