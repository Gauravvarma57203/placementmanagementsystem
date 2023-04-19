package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.Company;
import Dao.CompanyDao;
import Helper.FactoryProvider;

/**
 * Servlet implementation class updateCompanyServlet
 */
public class updateCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCompanyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("id"));
		
		CompanyDao companydao = new CompanyDao();
		
		companydao.deleteCompany(id);
		
		
		response.sendRedirect("admindashboard.jsp");		
		
		
		
		
		
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("ids"));
		String 	companyname =request.getParameter("company");
		String  type = request.getParameter("choosedcompany");
		String location = request.getParameter("location");
		String packages = request.getParameter("packagess");
		String jobprofile = request.getParameter("jobprofile");
		String desc = request.getParameter("desc");

		CompanyDao companydao = new CompanyDao();
		Company company = companydao.getCompanyById(id);
		
		company.setCompanyname(companyname);
		company.setJobprofile(jobprofile);
		company.setLocation(location);
		company.setSalarypackage(packages);
		company.setType(type);
		company.setDescription(desc);
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction t = s.beginTransaction();
		s.update(company);
		t.commit();
		s.close();
		
		
		
		response.sendRedirect("admindashboard.jsp");
		
		
		
		
	
	
	
	
	}

}
