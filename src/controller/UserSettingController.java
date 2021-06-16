package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import dao.UserDAO;
import dao.impl.UserDAOImpl;
import model.User;
import utils.MyUtils;

/**
 * Servlet implementation class UserSetting
 */
@WebServlet("/user/setting")
public class UserSettingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			User user = MyUtils.getUserInSession(request);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/userSettingView.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		
		String successMessage = "";
		
		User user = MyUtils.getUserInSession(request);
		
		UserDAO userDAO = new UserDAOImpl();
		
		
		
		if(action.equalsIgnoreCase("update-password")) {
			
			String old_pwd = request.getParameter("old_password");
			String new_pwd = request.getParameter("new_password");
			
			if(checkPass(old_pwd, user.getPassword()) == false) {
				String errorMessage1 = "Mật khẩu không đúng!";
				request.setAttribute("errorMessage1", errorMessage1);
			} else {
				user.setPassword(hashPassword(new_pwd));
				userDAO.updatePassword(user);
				
				successMessage = "Cập nhật thành công!";
				request.setAttribute("successMessage", successMessage);
			}
			
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/userSettingView.jsp");
			dispatcher.forward(request, response);	
		} else if(action.equalsIgnoreCase("delete-account")) {
			
			String pwd = request.getParameter("password_confirm");
			String text = request.getParameter("text_confirm");
			boolean hasError = false;
			
			if( text.equals("I want to delete my account") == false) {
				String errorMessage2 = "Câu xác nhận không đúng!";
				hasError = true;
				request.setAttribute("errorMessage2", errorMessage2);
			}
			// cần xem lại logic if else
			if(checkPass(pwd, user.getPassword()) == false) {
				String errorMessage3 = "Mật khẩu không đúng!";
				hasError = true;
				request.setAttribute("errorMessage3", errorMessage3);
			} 
			
			if(hasError) {
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/userSettingView.jsp");
				dispatcher.forward(request, response);
			} else {
				userDAO.delete(user.getId());
				MyUtils.deleteUserInSession(request);
				request.getSession().invalidate();
				response.sendRedirect(request.getContextPath() + "/login");
			}
		}
		
		
	}
	
	private String hashPassword(String plainTextPassword){
		return BCrypt.hashpw(plainTextPassword, BCrypt.gensalt());
	}
	
	private boolean checkPass(String plainPassword, String hashedPassword) {
		if (BCrypt.checkpw(plainPassword, hashedPassword))
			return true;
		else
			return false;
	}

}
