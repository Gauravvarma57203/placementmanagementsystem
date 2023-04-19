package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.Students;
import Helper.FactoryProvider;

/**
 * Servlet implementation class AddStudentServlet
 */
public class AddStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentServlet() {
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
		String name = request.getParameter("sname");
		int rollno = Integer.parseInt(request.getParameter("srollno"));
		String dob =request.getParameter("dob");
		String email =request.getParameter("semail");	
		long number =Long.parseLong(request.getParameter("mob"));
		long alternatenumber =Long.parseLong(request.getParameter("altermob"));
		float tenthPercent =Float.parseFloat(request.getParameter("ten"));
		float twelvepercent =Float.parseFloat(request.getParameter("tweleve"));
		float tenAndTwelvePercentage =Float.parseFloat(request.getParameter("tentwelveper"));

		float firstSemCgpa =Float.parseFloat(request.getParameter("firstSemCgpa"));
	float firstSemPercentage =Float.parseFloat(request.getParameter("firstSemPercentage"));
		
		float secondSemCgpa =Float.parseFloat(request.getParameter("secondSemCgpa"));
		float secondSemPercentage =Float.parseFloat(request.getParameter("secondSemPercentage"));

		
		float	thirdSemCgpa =Float.parseFloat(request.getParameter("thirdSemCgpa"));
		float thirdSemPercentage =Float.parseFloat(request.getParameter("thirdSemPercentage"));
		
		float fourthSemCgpa =Float.parseFloat(request.getParameter("fourthSemCgpa"));
		float fourthSemPercentage =Float.parseFloat(request.getParameter("fourthSemPercentage"));
		
		
		float firstYearPercent= ((firstSemPercentage + secondSemPercentage)/2);
		
		float secondYearPercent =((thirdSemPercentage + fourthSemPercentage)/2);
		
		float averageFirstAndSecondYearPercent = ((firstYearPercent + secondYearPercent)/2);
		
		int backlog = Integer.parseInt(request.getParameter("backlog"));
		
		int gap = Integer.parseInt(request.getParameter("gap"));
		
		String diploma =request.getParameter("diploma");
		
		
		String eligible;
		
		if(tenthPercent >= 60 && twelvepercent >= 60 && firstYearPercent >= 60 && secondYearPercent >= 60) {
			eligible = "YES";
		}else {
			eligible = "NO";

		}
		
		
		
		System.out.println(name);
		
		//System.out.println(fourthSemPercentage);
		
		Students student = new Students();
		
		student.setName(name);
		student.setRollnumber(rollno);
		student.setDateOfBirth(dob);
		student.setsEmail(email);
		student.setMobNumber(number);
		student.setAlternateNumber(alternatenumber);
		
		student.setTenthPercentage(tenthPercent);
		student.setTwelvethPercentage(twelvepercent);
		student.setAverageTenAndTwelvethPercentage(tenAndTwelvePercentage);
		student.setFirstSemCgpa(firstSemCgpa);
		student.setFirstSemPercentage(firstSemPercentage);
		student.setSecondSemCgpa(secondSemCgpa);
		student.setSecondSemPercentage(secondSemPercentage);
		student.setThirdSemCgpa(thirdSemCgpa);
		student.setThirdSemPercentage(thirdSemPercentage);
		student.setFourthSemCgpa(fourthSemCgpa);
		student.setFourthSemPercentage(fourthSemPercentage);
		student.setFirstYearPercentage(firstYearPercent);
		student.setSecondYearPercentage(secondYearPercent);
		student.setAverageFirstAndSecondYearPercent(averageFirstAndSecondYearPercent);
		student.setBacklog(backlog);
		student.setGap(gap);
		student.setDiploma(diploma);
		student.setEligible(eligible);
		
		
		
		
		Session s =FactoryProvider.getFactory().openSession();
		Transaction t = s.beginTransaction();
		
		s.save(student);
		t.commit();
		s.close();
		
		
		response.sendRedirect("studentdashboard.jsp");
		return;
		
	}catch (Exception e) {
		// TODO: handle exception
		
		e.printStackTrace();
	}
		

		

		

		
			
		

												
		
	
	
	
	}

}
