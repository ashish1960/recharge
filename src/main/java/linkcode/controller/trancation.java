package linkcode.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import linkcode.dao.Dao;
import linkcode.dao.Daoimplemanation;
import linkcode.model.recharge;

import java.io.IOException;
import java.util.List;


/**
 * Servlet implementation class trancation
 */
public class trancation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trancation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String mobile_number=request.getParameter("mobile_number");
		Dao regdao = new Daoimplemanation();
	         HttpSession session = request.getSession();
			List<recharge> seglst = regdao.retrieveRecord(mobile_number);
			if (seglst != null && !seglst.isEmpty()) {
				session.setAttribute("mobile_number",mobile_number);

	            session.setAttribute("data",seglst);
	            response.sendRedirect("trancation.jsp");
	        } else {
	            session.setAttribute("notFoundMessage", "Register ID not found.");
	            response.sendRedirect("user1.jsp");
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
