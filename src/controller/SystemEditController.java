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
import model.User;
import model.UserSystem;

/**
 * Servlet implementation class SystemEditController
 */
@WebServlet("/editSystem")
public class SystemEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SystemEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		UserSystemDAO userSystemDAO = new UserSystemDAOImpl();
		UserSystem userSystem = userSystemDAO.getUserSystem(id);
		
		request.setAttribute("system", userSystem);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/systemEditView.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = (String)request.getParameter("systemName");
		String description = (String)request.getParameter("systemDescription");
		int id = Integer.parseInt(request.getParameter("systemId"));
		
		UserSystem userSystem = new UserSystem();
		userSystem.setId(id);
		userSystem.setName(name);
		userSystem.setDescription(description);
		
		UserSystemDAO userSystemDAO = new UserSystemDAOImpl();
//		System.out.println(userSystem);
		userSystemDAO.update(userSystem);
		
		response.sendRedirect(request.getContextPath() + "/system"); 
	}

}
