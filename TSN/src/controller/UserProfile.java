package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProfileDAO;
import dao.UserRegisterDAO;
import vo.UserProfileVO;
import vo.UserRegisterVO;



/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserProfile() {
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
		String flag= request.getParameter("flag");
		System.out.println("asdsa" +flag );
		if(flag.equals("update"))
		{
			Changefname(request,response);
		}
	}

	private void Changefname(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
//		String firstname = request.getParameter("Hdnfirstname");
		String ftname = request.getParameter("Hdnfirstname");
		  String firstname = ftname.substring(0, 1).toUpperCase() + ftname.substring(1);
//		  System.out.println(firstname);
//		  System.exit(0);
		  String ltname = request.getParameter("Hdnlastname");
		  String lastname =ltname.substring(0, 1).toUpperCase() + ltname.substring(1);
		System.out.println(firstname);
	    int uid = Integer.parseInt(request.getParameter("ID"));
	    
	    String password = request.getParameter("password");
	    
	    String salt = request.getParameter("salt");
	    
	    	    
	    String role = request.getParameter("role");
	    
//	    String lastname = request.getParameter("Hdnlastname");
	   
	    String homeaddress = request.getParameter("Hdnaddress");
	   
	    String experience = request.getParameter("HdnexperienceSince");
	    
	    String companyname = request.getParameter("HdncompanyName");
	   
	    String companyaddress = request.getParameter("HdncompanyAddress");
	   
	    String country = request.getParameter("Hdncountry");
	    
	    String gender = request.getParameter("Hdngender");
	    
	    String designation = request.getParameter("Hdndesignation");
	   
	    String phone = request.getParameter("Hdnphone");
	
	    String email = request.getParameter("Hdnemail");
	    
	    String website = request.getParameter("Hdnwebsite");
	    
	    
	    	    
	    UserRegisterVO profilevo= new UserRegisterVO();
	    profilevo.setid(uid);
	    profilevo.setFirstname(firstname);
	    profilevo.setPassword(password);
	    profilevo.setLastname(lastname);
	    profilevo.setSalt(salt);
	    profilevo.setRole(role);
	    profilevo.setHomeaddress(homeaddress);
	    profilevo.setExperience(experience);
	    profilevo.setCompanyname(companyname);
	    profilevo.setCompanyaddress(companyaddress);
	    profilevo.setCountry(country);
	    profilevo.setGender(gender);
	    profilevo.setDesignation(designation);
	    profilevo.setPhone(phone);
	    profilevo.setEmail(email);
	    profilevo.setWebsite(website);
	    
	    UserRegisterDAO dao=new UserRegisterDAO();
		 dao.insert(profilevo);
		 System.out.println("DAO");
		 response.sendRedirect("user-profile(layout-2).jsp");
	    
//	    ProfileDAO profiledao = new ProfileDAO();
//	    profiledao.insertuserdetails(profilevo);
//	    System.out.println("Data" + profiledao);
	    
	   
	    
	   /*response.sendRedirect("user-profile(layout-1).jsp");*/
	    
	}

}
