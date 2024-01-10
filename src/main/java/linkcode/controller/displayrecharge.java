package linkcode.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import linkcode.dao.Dao;
import linkcode.dao.Daoimplemanation;
import linkcode.model.plan;
import linkcode.model.recharge;

import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class displayrecharge
 */
public class displayrecharge extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public displayrecharge() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
		Dao regdao=new Daoimplemanation();

		List<recharge> reglst = regdao.getallrecharge();	
		
		if(reglst != null && !reglst.isEmpty())
		{
			HttpSession session=request.getSession();
			session.setAttribute("data", reglst);
			
			response.sendRedirect("displyrecharge.jsp");
		}
		else
		{
			request.setAttribute("message", "No records found.");
	        request.getRequestDispatcher("error.jsp").forward(request, response);
			
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
