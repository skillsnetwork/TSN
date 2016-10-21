package controller;

import java.io.IOException;
import java.io.PrintStream;
import java.util.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FpasswdDAO;
import pack1.SendMail;
import vo.OTPVO;
import vo.UserRegisterVO;
import dao.UserRegisterDAO;

/**
 * Servlet implementation class FpsswdController
 */
@WebServlet("/FpsswdController")
public class FpsswdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FpsswdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");
		if(flag.equals("resetpass"))
		{
			System.out.println("in cntrl");
			resetpass(request,response);
		}
		if(flag.equals("resendotp"))
		  {
		    String email=request.getParameter("otpmail");
		    System.out.println("User name"+ email);
		    
		   System.out.println("in cntrl ffg");
		   resendotp(request,response);
		   System.out.println("Resend Otp is running");
		  }
		
	}

	private void resendotp(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List ls= new ArrayList();
		   String email=request.getParameter("otpmail");
		   String id =request.getParameter("ID");
		   String to="", sub="", message="";
		   
		   System.out.println("the otp id for resend otp is "+ id);
		   System.out.println("User name"+ email);
		   
		   List hii= new ArrayList();
			 OTPVO vo=new OTPVO();
			 vo.setEmail1(id);
			 
			 FpasswdDAO fdoa = new FpasswdDAO();
			 hii=fdoa.recheckotp(vo);
			 System.out.println("List of email in otp is " + hii.size());
		   
		   UserRegisterVO passwdvo=new UserRegisterVO();
		   passwdvo.setEmail(email);
		   FpasswdDAO dao=new FpasswdDAO();
		   
		   ls=dao.authentication(passwdvo);
			 
		   HttpSession hs=request.getSession();
		   
		   if(hii !=null && hii.size()>0)
			 {
				 OTPVO otpvo=(OTPVO)hii.get(0);
				 int uid=otpvo.getId();
				 String pswd=otpvo.getEmail1();
				 
				 System.out.println("1 id "+id);
				 System.out.println("1 email for resend otp is :+++"+ pswd);
				 
				 Random rand=new Random(System.currentTimeMillis());
	           
	             to = otpvo.getEmail1();
	             sub ="OTP";
	             int otp=rand.nextInt(999999);
	             message ="your OTP is:" +otp;
	             
	             SendMail m2 = new SendMail();
	             String msg = m2.mail1(to, sub, message);
	             System.out.print(msg);
				 
				 OTPVO newotp=new OTPVO();
				 newotp.setId(uid);
				 newotp.setEmail1(pswd);
				 newotp.setOtp1(otp);
				 
				 FpasswdDAO sameotp=new FpasswdDAO();
				 sameotp.updateotp(newotp);
				 hs.setAttribute("UserNameotp", hii);
				 response.sendRedirect("PasswordChange.jsp");
			 
			 }
		   
	 }
		
	
	private void resetpass(HttpServletRequest request, HttpServletResponse response) {

		 String email1=request.getParameter("username");
		 String firstname=request.getParameter("firstname");
		 String lastname=request.getParameter("lastname");
		 String phone=request.getParameter("phone");
		 int id= Integer.parseInt(request.getParameter("id"));
		 int otp1= Integer.parseInt(request.getParameter("otp"));
		 String otppassword = request.getParameter("otppassword");
		 System.out.println("email1"+email1);
		 System.out.println("otp1"+ otp1);
		 
		 List resetls= new ArrayList();
		
		 
		 OTPVO resetvo=new OTPVO();
		 resetvo.setEmail1(email1);
		 resetvo.setOtp1(otp1);
		 
		 FpasswdDAO reset=new FpasswdDAO();
		 resetls=reset.resetpasswd(resetvo);
		
		 
        if(resetls!=null && resetls.size()>0)
        {
        	 UserRegisterVO userVO= new UserRegisterVO();
        	 userVO.setid(id);
         	 userVO.setFirstname(firstname);
         	 userVO.setLastname(lastname);
         	 userVO.setPhone(phone);
        	 userVO.setEmail(email1);
        	 userVO.setPassword(otppassword);
        	 
        	 UserRegisterDAO userDAO= new UserRegisterDAO();
        	 userDAO.updatepass(userVO);
        	 System.out.println(userDAO);
        }
		
    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List ls= new ArrayList();
		String email=request.getParameter("email");
		 String to="", sub="", message="";
		 
		 
		 UserRegisterVO passwdvo=new UserRegisterVO();
		 passwdvo.setEmail(email);
		 FpasswdDAO dao=new FpasswdDAO();
		 ls=dao.authentication(passwdvo);
		 
		 List hii= new ArrayList();
		 OTPVO vo=new OTPVO();
		 vo.setEmail1(email);
		 
		 FpasswdDAO fdoa = new FpasswdDAO();
		 hii=fdoa.checkotp(vo);
		 System.out.println("List of email in otp is " + hii.size());
		 
		 HttpSession hs=request.getSession();
		 hs.setAttribute("emailmatch", ls);
		 
		 if(hii !=null && hii.size()>0)
		 {
			 OTPVO otpvo=(OTPVO)hii.get(0);
			 int id=otpvo.getId();
			 String pswd=otpvo.getEmail1();
			 
			 System.out.println("1 id "+id);
			 System.out.println("1 email "+ pswd);
			 
			 Random rand=new Random(System.currentTimeMillis());
             System.out.println(ls.get(0));
             to = passwdvo.getEmail();
             sub ="OTP";
             int otp=rand.nextInt(999999);
             message ="your OTP is:" +otp;
             
             SendMail m2 = new SendMail();
             String msg = m2.mail1(to, sub, message);
             System.out.print(msg);
			 
			 OTPVO newotp=new OTPVO();
			 newotp.setId(id);
			 newotp.setEmail1(pswd);
			 newotp.setOtp1(otp);
			 
			 FpasswdDAO sameotp=new FpasswdDAO();
			 sameotp.updateotp(newotp);
			 hs.setAttribute("UserNameotp", hii);
			 response.sendRedirect("PasswordChange.jsp");
		 
		 }
		 else
		 {
		
		 if(ls !=null && ls.size()>=1)
		 {
			 Random rand=new Random(System.currentTimeMillis());
             System.out.println(ls.get(0));
             to = passwdvo.getEmail();
             sub ="OTP";
             int otp=rand.nextInt(999999);
             message ="your OTP is:" +otp;
             
             SendMail m2 = new SendMail();
             String msg = m2.mail1(to, sub, message);
             System.out.print(msg);
			  			 
             Date d1=new Date();
             long d11 = d1.getTime();
               Calendar cal = Calendar.getInstance();
               cal.setTime(d1);
               cal.add(Calendar.MINUTE, 30);
               Date newTime = (cal.getTime());
               long newTime1 = newTime.getTime();
               System.out.println("current time is"+d1);
               System.out.println("new time is:"+newTime);
               System.out.println("current time is"+d11);
               System.out.println("new time is:"+newTime1);
               
               String email1=email;
               String fpasswd="Forgot Password";
               int otp1=otp;
               long sentTime=d11;
               long expireTime=newTime1;
               String Status="Pending";
               
               OTPVO otpvo = new OTPVO();
               otpvo.setEmail1(email1);
               otpvo.setFpasswd(fpasswd);
               otpvo.setOtp1(otp1);
               otpvo.setSentTime(sentTime);
               otpvo.setExpireTime(expireTime);
               otpvo.setStatus(Status);
               
               List ls1= new ArrayList();
               FpasswdDAO dao1=new FpasswdDAO();
               dao1.insert(otpvo);
               System.out.println("DAO");
               ls1=dao1.search(otpvo);
              
               Boolean isUserLsNotNull = ls1 != null && ls1.size() > 0;
       		if (isUserLsNotNull) {
               

              hs.setAttribute("UserName", ls1);
     		  response.sendRedirect("PasswordChange.jsp");
               }
               }
               else{
       	  
            	   hs.setAttribute("UserName", "No");
            	   response.sendRedirect("Home.jsp");
            	   
               }
               
               
             
             
		 }
		
		
	}
}



