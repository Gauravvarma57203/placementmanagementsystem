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
import Bean.Students;
import Dao.CompanyDao;
import Dao.StudentDataDao;
import Helper.FactoryProvider;

/**
 * Servlet implementation class AssignCompanyServlet
 */
public class AssignCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignCompanyServlet() {
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
	
		String companyname = request.getParameter("choosedcompany");
		String studentname = request.getParameter("chkselect");
		
	
		
		CompanyDao companydao = new CompanyDao();
		StudentDataDao studentdao = new StudentDataDao();
		
		Company company;
		Students student;
		
		
		company = companydao.getCompanyByName(companyname);
		student = studentdao.getStudentByName(studentname);
		
		
		
		student.getCompany().add(company);
		
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction t = session.beginTransaction();

		session.save(student);
		t.commit();
		session.close();
		
		response.sendRedirect("RecuritStudent.jsp");
		
				
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	}

}
