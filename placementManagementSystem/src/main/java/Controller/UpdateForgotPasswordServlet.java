package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.User;
import Dao.StudentDao;
import Helper.FactoryProvider;

/**
 * Servlet implementation class UpdateForgotPasswordServlet
 */
public class UpdateForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateForgotPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		StudentDao studentdao = new StudentDao();
		
		
		HttpSession httpsess = request.getSession();
		
		String password = request.getParameter("confirmpassword");
		String pass  = request.getParameter("cpassword");
		
		//	String e = (String) hsession.getAttribute("sendemail");
		String mail =(String) httpsess.getAttribute("sendemail");
				
		
		
		
		
		
		if(password != null && pass != null && password.equals(pass) ) {
			
			//create qurry for get the uaser email id and store the updated password
			
			 User user = studentdao.getUserByEmail(mail);
			 int roll = user.getRollno();
			 
			 int id=	 studentdao.updatePassword(roll, pass);
			 
			 out.print("updated roll no "+id);
			 httpsess.setAttribute("meassage", "Password Changed Successfully");
			 response.sendRedirect("Login.jsp");
			 
			 
			//Session s= FactoryProvider.getFactory().openSession();
			// Transaction t = s.beginTransaction();
			 
			 
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
