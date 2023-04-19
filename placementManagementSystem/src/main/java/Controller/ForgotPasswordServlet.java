package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordServlet() {
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
			
			String email = request.getParameter("femails");
			RequestDispatcher rd =null;
			int otpvalue=0;
			
			HttpSession httpsession = request.getSession();
			HttpSession mysession = request.getSession();
			
			
			//checking email is not null
			if(email!=null || !email.equals("")) {
				
				//generating random otp
				Random randomotp = new Random();
				otpvalue = randomotp.nextInt(999999);
				
				
				String to =email;    //change according to email
				String host = "smtp.gmail.com";
				
				//get the session
				
				//setting properties 
				Properties properties = new Properties();
				properties.put("mail.smtp.host", host);
				properties.put("mail.smtp.port", "465");
				properties.put("mail.smtp.ssl.enable", "true");
				properties.put("mail.smtp.auth", "true");
				properties.put("mail.smtp.socketFactory.port", "465");
				properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				
				//session mail
				Session session = Session.getInstance(properties,new Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("testing.8056@gmail.com","kknqybkdcwvtrdtx");
					}
				});
				
				session.setDebug(true);
				
				
				//compose the message
				
				MimeMessage sendmessage = new MimeMessage(session);
				
				
				sendmessage.setFrom("testing.8056@gmail.com");
				sendmessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				sendmessage.setSubject("Forgot Password ");
				sendmessage.setText("Your Otp is "+otpvalue);
			
				//send
				Transport.send(sendmessage);
				out.println("Sent Successfully");
				
				
				rd = request.getRequestDispatcher("EnterOtp.jsp");
				httpsession.setAttribute("message", "OTP is sent to your email");
				
				//check session otp  or maintain session
				
				mysession.setAttribute("otp", otpvalue);
				mysession.setAttribute("sendemail", email);
				rd.forward(request, response);
				
				
				
				
				
				
			}
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
