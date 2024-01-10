package linkcode.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import linkcode.dao.Dao;
import linkcode.dao.Daoimplemanation;
import linkcode.model.plan;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class planController
 */
public class planController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public planController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String plan_name=request.getParameter("plan_name");
	    String plan_company=request.getParameter("plan_company");
	    float plan_amount=Float.parseFloat(request.getParameter("plan_amount"));
		
	    
	    plan plobj=new plan( 0,plan_name,plan_company,plan_amount);
	    Dao robj = new Daoimplemanation();
	    List<plan> plst=new ArrayList<plan>();
	    plst.add(plobj);
	    int i=robj.createplan(plst);
	    if(i>0) {
			response.sendRedirect("login1.jsp");
			
		} else {
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
