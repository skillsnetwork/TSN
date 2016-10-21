package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FpasswdDAO;
import dao.UserRegisterDAO;
import vo.OTPVO;
import vo.UserRegisterVO;

/**
 * Servlet implementation class PasswordChangeController
 */
@WebServlet("/PasswordChangeController")
public class PasswordChangeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordChangeController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	 {
	  String flag=request.getParameter("flag");
	  if(flag.equals("update"))
	  {
	   System.out.println("in cntrl");
	   update(request,response);
	  }

	 }

	 private void update(HttpServletRequest request, HttpServletResponse response) throws IOException 
	 {
		 String email1=request.getParameter("username");
	  
	   int userID= Integer.parseInt(request.getParameter("userID"));
	   int otp1= Integer.parseInt(request.getParameter("otp"));
	   String otppassword = request.getParameter("otppassword");
	   String firstname= request.getParameter("firstname");
	   String lastname= request.getParameter("lastname");
	   String phone = request.getParameter("phone");
	   
	   char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		  StringBuilder sb = new StringBuilder();
		  Random random = new Random();
		  for (int i = 0; i < 20; i++) {
		      char c = chars[random.nextInt(chars.length)];
		      sb.append(c);
		  }
		  String salt = sb.toString();
	   
	   String encryptedPassword=md5(otppassword + salt );
	   
	   System.out.println("email1"+email1);
	   System.out.println("otp1"+ otp1);
	   System.out.println("User gfgh ID" + userID);
	   System.out.println("Fname       "+ firstname);
	   System.out.println(" \nlastname     "+ lastname);
	   System.out.println(" \nphone"+ phone);
	   
	   
	   List resetls= new ArrayList();
	  
	   
	   
	   OTPVO resetvo=new OTPVO();
	   resetvo.setEmail1(email1);
	   resetvo.setOtp1(otp1);
	   
	   
	   FpasswdDAO reset=new FpasswdDAO();
	   resetls=reset.resetpasswd(resetvo);
	  
	   
	      if(resetls!=null && resetls.size()>0)
	      {
	        UserRegisterVO userVO= new UserRegisterVO();
	        userVO.setid(userID);
	        
	        userVO.setEmail(email1);
	        
	        
	        UserRegisterDAO userDAO= new UserRegisterDAO();
	        
	        List list= new ArrayList();
	        list=userDAO.getUserByUserId(userVO);
	        System.out.println("size  is reset on update password    " +list.size());
	        
	        UserRegisterVO userRegVO=(UserRegisterVO) list.get(0);
	        String fname=userRegVO.getFirstname();
	        String lname=userRegVO.getLastname();
	        String phonenum=userRegVO.getPhone();
	        System.out.println("update fname"+fname);
	        System.out.println("update lname"+lname);
	        System.out.println("update phone"+phonenum);
	        
	        
	        
	        userVO.setPassword(encryptedPassword);
	        userVO.setSalt(salt);
	        userVO.setFirstname(fname);
	        userVO.setLastname(lname);
	        userVO.setPhone(phonenum);
	        
	        userDAO.updatepass(userVO);
	        System.out.println(userDAO);
	        
	        response.sendRedirect("Home.jsp");
	      }
	 }    
	  public String md5(String input){
		  String md5=null;
		  if(input==null){
		   return null;
		  }
		  try{
		   MessageDigest digest=MessageDigest.getInstance("MD5");
		   digest.update(input.getBytes(),0,input.length());
		   md5=new BigInteger(1,digest.digest()).toString(16);
		  }catch(NoSuchAlgorithmException e){
		   
		  } System.out.println("Encrypted password is "+md5);
		  return md5;
		 }
}

