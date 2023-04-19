package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.User;
import Dao.StudentDao;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		response.setContentType("text/html");
		
		
		
		String studentemail = request.getParameter("email");
		String studentPassword = request.getParameter("psk");
		
		StudentDao studentdao = new StudentDao();
		User user =studentdao.getUserByEmailAndPassword(studentemail, studentPassword);
		HttpSession httpsession = request.getSession();
		
		
		if(user == null) {
			out.println("<h1>Invalid Credintials</h1>");
			httpsession.setAttribute("message", "Invalid Details try with another one");
			response.sendRedirect("Login.jsp");
			return;
			
		}else {
			
				if(user.getIstype().equalsIgnoreCase("student")) {
			
			httpsession.setAttribute("current-user", user);
			response.sendRedirect("studentdashboard.jsp");
				}else {
					httpsession.setAttribute("message", "sorry we  not able identified  as a Student ! try again");
					response.sendRedirect("Login.jsp");
				}
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
