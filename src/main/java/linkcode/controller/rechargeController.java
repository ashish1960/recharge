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
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class rechargeController
 */
public class rechargeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rechargeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  String mobile_number = request.getParameter("mobile_number");
	  float amount = Float.parseFloat(request.getParameter("amount"));
	  String planId=request.getParameter("planId");
	  
	  
	  recharge robj=new recharge(mobile_number, amount, planId);
	  Dao dobj=new Daoimplemanation();
	  List<recharge> rlst=new ArrayList<recharge>();
	  
	  rlst.add(robj);
	  int i=dobj.createrecharge(rlst);
	  HttpSession session = request.getSession();
		
	  if(i>0) {
		  session.setAttribute("data",rlst);

			response.sendRedirect("account.jsp");
			
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
