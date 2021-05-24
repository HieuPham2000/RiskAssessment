package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserSystemDAO;
import dao.impl.UserSystemDAOImpl;
import model.UserSystem;
import model.User;
/**
 * Servlet implementation class SystemAddController
 */
@WebServlet("/addSystem")
public class SystemAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SystemAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/systemAddView.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = (String)request.getParameter("systemName");
		String description = (String)request.getParameter("systemDescription");
		
		HttpSession session = request.getSession();
		int user_id = ((User)session.getAttribute("user")).getId();
		
		UserSystem userSystem = new UserSystem();
		userSystem.setUser_id(user_id);;
		userSystem.setName(name);
		userSystem.setDescription(description);
		
		UserSystemDAO userSystemDAO = new UserSystemDAOImpl();
//		System.out.println(userSystem);
		userSystemDAO.insert(userSystem);
		
		response.sendRedirect(request.getContextPath() + "/system"); 
	}

}
