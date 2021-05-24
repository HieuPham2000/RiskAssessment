package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserSystemDAO;
import dao.impl.UserSystemDAOImpl;
import model.User;
import model.UserSystem;

@WebServlet("/system")
public class SystemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SystemController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			User user = (User)session.getAttribute("user");

			UserSystemDAO userSystemDAO = new UserSystemDAOImpl();
			List<UserSystem> listUserSystems = userSystemDAO.get(user.getId());
			request.setAttribute("listUserSystems", listUserSystems);
			
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/systemView.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			response.sendRedirect(request.getContextPath() + "/login");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
