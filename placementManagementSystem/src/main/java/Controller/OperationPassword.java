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
import Dao.CompanyDao;
import Dao.StudentDao;
import Helper.FactoryProvider;

/**
 * Servlet implementation class OperationPassword
 */
public class OperationPassword extends HttpServlet {
	private static final long serialVersionUID = 102831973239L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperationPassword() {
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
		
		StudentDao student = new StudentDao();
		
		
		PrintWriter out = response.getWriter();
		
		HttpSession sessions = request.getSession();
		
		String email = request.getParameter("email");
		
		String previouspass = request.getParameter("previouspassword");
		
		String newpass = request.getParameter("newpass");
		
		User user = student.getUserByEmail(email);
		
		if(user.getPassword().equals(previouspass)) {
			
			user.setPassword(newpass);
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction t = s.beginTransaction();
			s.saveOrUpdate(user);
			t.commit();
			s.close();
			
			
			
			
			sessions.setAttribute("message", "Password changed Succesfully");	
			if(user.getIstype().equalsIgnoreCase("student")) {
				request.getSession().invalidate();
				response.sendRedirect("Login.jsp");
				

			}else {
				request.getSession().invalidate();
				response.sendRedirect("adminlogin.jsp");
			}

			
		}else {
			sessions.setAttribute("message", "Invalid Previous Password");
			response.sendRedirect("studentdashboard.jsp");
		}
		
		
		
		
		
		
		
		
		
	}

}
