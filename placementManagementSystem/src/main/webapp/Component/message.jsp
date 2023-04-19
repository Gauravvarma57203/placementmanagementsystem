<%

   String message =(String)session.getAttribute("message");

if(message!= null){
	
	%>
	
	
	<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong><%= message %></strong>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
	
	
	
	<%
	
	session.removeAttribute("message");
}




%>
<!-- 

PrintWriter out = response.getWriter();
		
		try {
			
		
		int rollno = Integer.parseInt(request.getParameter("roll_no"));
		String username = request.getParameter("user_name");

		String fname = request.getParameter("firstname");
		String mname = request.getParameter("midname");
		String lname = request.getParameter("midname");

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
		
		
		
		Session session = FactoryProvider.getFactory().openSession();
		int id =(Integer)session.save(user);
		session.beginTransaction();
		session.close();
		
		FactoryProvider.closeFactory();
		
		HttpSession httpsession = request.getSession();
		
		httpsession.setAttribute("message", "Registration successfully Rollno : "+id);
		response.sendRedirect("register.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	
	

 -->