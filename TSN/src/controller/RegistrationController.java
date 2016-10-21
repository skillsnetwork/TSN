package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.RegistrationDAO;
import dao.UserRegisterDAO;
import vo.RegistrationVO;
import vo.UserRegisterVO;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");
		if(flag.equals("search"))
		{
			System.out.println("in cntrl");
			search(request,response);
		}
		if(flag.equals("edit"))
		{
			System.out.println("in cntrl");
			search1(request,response);
		}
		}

		
		private void search1(HttpServletRequest request, HttpServletResponse response) throws IOException 
		{
			String ID=request.getParameter("ID");
		
			
			System.out.println("Got the id" +ID);
			
			 RegistrationVO vo=new RegistrationVO();
			 vo.setEmail(ID);
			  
			 List ls=new ArrayList();
			   RegistrationDAO dao=new RegistrationDAO();
			   ls=dao.edit(vo);
			   
			   HttpSession hs=request.getSession();
			   hs.setAttribute("editlist", ls);
			   response.sendRedirect("User/profile.jsp");
			  
			
		}


		private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
			  
			UserRegisterVO vo=new UserRegisterVO();
			  List ls=new ArrayList();
			  UserRegisterDAO dao=new UserRegisterDAO();
			   ls=dao.searchSignupUser(vo);
			   
			   System.out.println(" \nSearched signup users    " + ls.size());
			   
			   HttpSession hs=request.getSession();
			   hs.setAttribute("editlist", ls);
			   response.sendRedirect("User/table.jsp");
			  
			 }
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		 {
		  String firstname = request.getParameter("firstname");
		  String lastname = request.getParameter("lastname");
		  String email = request.getParameter("email");
		  String password = request.getParameter("password"); 
	
		  String encryptedPassword=md5(password);

		  RegistrationVO vo=new RegistrationVO();
		  vo.setFirstname(firstname);
		  vo.setLastname(lastname);
		  vo.setEmail(email);
		  vo.setPassword(encryptedPassword);

		  RegistrationDAO dao=new RegistrationDAO();
		  dao.insert(vo);
		  System.out.println("DAO");
		  response.sendRedirect("Login.jsp");
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
