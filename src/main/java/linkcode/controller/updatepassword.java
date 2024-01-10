package linkcode.controller;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import linkcode.dao.Dao;
import linkcode.dao.Daoimplemanation;
import linkcode.model.login;

import java.io.IOException;

/**
 * Servlet implementation class updatepassword
 */
public class updatepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updatepassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		login loj=new login(email, password);
		Dao robj= new Daoimplemanation();

		int i=robj.updatelogin(loj);
		if(i>0) {
			response.sendRedirect("Home.jsp");
		}
		else
		{
			response.sendRedirect("updatepassword.jsp");
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
