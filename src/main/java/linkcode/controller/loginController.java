package linkcode.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import linkcode.dao.Dao;
import linkcode.dao.Daoimplemanation;
import linkcode.model.login;

import java.io.IOException;

/**
 * Servlet implementation class loginController
 */
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		login lobj=new login(email, password);
		Dao robj=new Daoimplemanation();
		boolean a=robj.validlogin(lobj);
		
		
		if("admin@gmail.com".equals(email)&&"admin".equals(password)) {
			response.sendRedirect("admin1.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("message", "login Succcessfull");
			session.setAttribute("username", email);
		}
		else if (a) {
			response.sendRedirect("home1.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("username",email);
		}
		else {
			response.sendRedirect("error.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
