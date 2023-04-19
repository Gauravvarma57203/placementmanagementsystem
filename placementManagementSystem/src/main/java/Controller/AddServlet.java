package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import Bean.User;
import Helper.FactoryProvider;

/**
 * Servlet implementation class AddServlet
 */
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
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
		
		try {
			
			
			int rollno = Integer.parseInt(request.getParameter("roll_no"));
			String username = request.getParameter("user_name");

			String fname = request.getParameter("firstname");
			String mname = request.getParameter("midname");
			String lname = request.getParameter("lastname");

			String name = lname + " " + fname + " " + mname;

			String email = request.getParameter("email");
			long number = Long.parseLong(request.getParameter("number"));
			String password = request.getParameter("cpass");		
			
			User user = new User();
			
			user.setRollno(rollno);
			user.setUsername(username);
			user.setName(name);
			user.setEmail(email);
			user.setNumber(number);
			user.setPassword(password);
			user.setIstype("student");
			
			
			Session  session = FactoryProvider.getFactory().openSession();
			int id =(Integer)session.save(user);
			session.beginTransaction().commit();
			session.close();
			
			FactoryProvider.getFactory().close();
			
			HttpSession httpsession = request.getSession();
			
			httpsession.setAttribute("message", "Registration successfully Rollno : "+id);
			
			response.sendRedirect("Login.jsp");
		
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
	}

}
