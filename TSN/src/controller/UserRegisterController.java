package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProfileDAO;
import dao.UserRegisterDAO;
import pack1.SendMail;
import vo.UserProfileVO;
import vo.UserRegisterVO;

/**
 * Servlet implementation class UserRegisterController
 */
@WebServlet("/UserRegisterController")
public class UserRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag= request.getParameter("flag");
		System.out.println("asdsa" +flag );
		if(flag.equals("searchUserName"))
		 {
		  searchUserName(request,response);
		 }
	
		 
	}

		private void searchUserName(HttpServletRequest request, HttpServletResponse response) throws IOException 
		 {
		  String email = request.getParameter("email");
		  System.out.println("got email:" +email);
		  UserRegisterVO s=new UserRegisterVO();
		    s.setEmail(email);
		  UserRegisterDAO a=new UserRegisterDAO();
		    List list = new ArrayList();
		    try {
		     list=a.authentication(s);
		     System.out.print("Size is as follows" +list.size());
		    } catch (Exception e) {
		   
		     e.printStackTrace();
		    }
		    
		    HttpSession l=request.getSession();
		    l.setAttribute("userList",list);
		    response.sendRedirect("loadUser.jsp");
		  
		 }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String ftname = request.getParameter("firstname");
		  String firstname = ftname.substring(0, 1).toUpperCase() + ftname.substring(1);
//		  System.out.println(firstname);
//		  System.exit(0);
		  String ltname = request.getParameter("lastname");
		  String lastname =ltname.substring(0, 1).toUpperCase() + ltname.substring(1);
		  String email = request.getParameter("email");
//		  int phone = Integer.parseInt(request.getParameter("phone"));
		  String phone = request.getParameter("phone"); 
		  String password = request.getParameter("password"); 
		  String designation = request.getParameter("designation");
//		  String encryptedPassword=md5(password);
		  
		  char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		  StringBuilder sb = new StringBuilder();
		  Random random = new Random();
		  for (int i = 0; i < 20; i++) {
		      char c = chars[random.nextInt(chars.length)];
		      sb.append(c);
		  }
		  String salt = sb.toString();
		  
		  String encryptedPassword=md5(password + salt);
		  
		  
		  UserRegisterVO vo=new UserRegisterVO();
		  vo.setFirstname(firstname);
		  vo.setLastname(lastname);
		  vo.setEmail(email);
		  vo.setPhone(phone);
		  vo.setPassword(encryptedPassword);
		  vo.setSalt(salt);
		  vo.setDesignation(designation);
		  vo.setRole("User");
		 
		  
		  UserRegisterDAO dao=new UserRegisterDAO();
		  HttpSession regusers = request.getSession();
		  
		  /*UserRegisterVO s=new UserRegisterVO();
		  UserRegisterDAO a=new UserRegisterDAO();
		    List list = new ArrayList();
		    list=a.authentication(s);*/
		  
		  String to="", sub="", message="";
		  to=vo.getEmail();
		  System.out.println("Email senrt after registrasion   " + to);
		  sub ="Successfully registered with 'The Skills Network'  ";
		  String uri = request.getScheme() + "://" +
		             request.getServerName() + 
		             ("http".equals(request.getScheme()) && request.getServerPort() == 80 || "https".equals(request.getScheme()) && request.getServerPort() == 443 ? "" : ":" + request.getServerPort());

		  message = uri + "/SkillsNetwork/Login.jsp";
		  SendMail m3 = new SendMail();
          String msg = m3.mail1(to, sub, message);
          System.out.print(msg);
		  
		  System.out.println("DAO");
		  if(msg == "Mail Send"){
		  dao.insert(vo);
		  
		  List userlist= new ArrayList();
		  userlist = dao.searchSignupUser(vo);
		  System.out.println("Total   Number  of  Users     " + userlist.size() );
		  regusers.setAttribute("TotalUsers", userlist);
		  response.sendRedirect("Home.jsp");
		  }
		  else{
//			  regusers.invalidate();
			  regusers.setAttribute("emailnotmatch", "Invalid Email Address");
			  response.sendRedirect("Home.jsp");
//				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
//				rd.forward(request, response);
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
