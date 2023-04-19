package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.Company;
import Bean.Students;
import Dao.CompanyDao;
import Dao.StudentDataDao;
import Helper.FactoryProvider;

/**
 * Servlet implementation class OperationalServlet
 */
public class OperationalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperationalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	/*
	
		PrintWriter out = response.getWriter();

		StudentDataDao studentdao = new StudentDataDao();
		CompanyDao companydao = new CompanyDao();
		
	
		Students st =null;
		Company comp;
		
		int l = Integer.parseInt(request.getParameter("studentid"));
		
		out.print(l);
		
		
		if(request.getParameter("addsub") != null) {
			
			
			Enumeration paranames =  request.getParameterNames(); 
			
			
			while(paranames.hasMoreElements()) {
				String spname= paranames.nextElement().toString();
				
				out.print(spname);
				
				if(!spname.equals("addsub")) {
					if(!spname.equals("id")) {
						
						//company id is stored of checked
						
						response.getWriter().print(spname +" : "+ request.getParameter(spname));
						
						int p =Integer.parseInt(request.getParameter(spname));
						
						out.print("p value " + p);
						
						st = studentdao.getStudentById(l);
						comp = companydao.getCompanyById(p);
						st.getCompany().add(comp);
						
						
						
					}	
				}
			}
			
					int returnid = studentdao.updateStudent(l, st);
					
					if(returnid > 0) {
						response.sendRedirect("admindashboard.jsp");
					}
			
				
			
		}
		
*/
	
	
	
	
	
	
	
	
	
	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
			PrintWriter out = response.getWriter();
		
		
			String companyname = request.getParameter("choosedcompany");//company name
			
			String interviewdate = request.getParameter("interviewdate");
			
			System.out.println(interviewdate);
			 
			
			String[] studentnames = request.getParameterValues("chkselect");  //student roll no
		
		
			CompanyDao companydao = new CompanyDao();
			StudentDataDao studentdao = new StudentDataDao();
			Students student;
			Company company;
			
			
			
			
			
			List<Students> studentlist = studentdao.getStudentByName(studentnames); //list of students marked 
			
			
			company = companydao.getCompanyByName(companyname);
			company.setInterviewdate(interviewdate);
			
			
			List<Company>  companies = new ArrayList<Company>();
			companies.add(company);

			company.setStudents(studentlist);
		
			
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction t = s.beginTransaction();
			s.saveOrUpdate(company);
			for(Students st : studentlist) {
				
				st.getCompany().add(company);
				
			
			}
		
			
			t.commit();
			
			s.close();
			
			
			
			HttpSession httpsession = request.getSession();
			httpsession.setAttribute("message", "Student Registed successfully");
			
			
		
		response.sendRedirect("RecuritStudent.jsp");
		
		
		
		
		
	}

}
