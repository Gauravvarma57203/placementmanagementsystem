package Controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.Company;
import Bean.Students;
import Helper.FactoryProvider;

/**
 * Servlet implementation class AddCompanyServlet
 */
public class AddCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCompanyServlet() {
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
	
	try {
	
		String companyname=request.getParameter("company");
		
		String location=request.getParameter("location");
		
		String salpackage = request.getParameter("packagess");
		
		String jobprofile = request.getParameter("jobprofile");
		
		String description = request.getParameter("desc");
		
		String typecompany = request.getParameter("choosedcompany");
		
		
	
		Company company = new Company();
		company.setLocation(location);
		company.setCompanyname(companyname);
		
		company.setSalarypackage(salpackage);
		company.setJobprofile(jobprofile);
		company.setDescription(description);
		company.setType(typecompany);
		
	
		
		
		
		
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction t = s.beginTransaction();
		s.save(company);
		t.commit();
		s.close();
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("admindashboard.jsp");
		rd.forward(request, response);
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		
		
		
		
		
		
		
		
		
	}

}
