package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.UserLoginDAO;
import dao.UserRegisterDAO;
import dao.addblogDAO;
import dao.countryDAO;
import vo.UserRegisterVO;
import vo.addblogVO;
import vo.cityVo;
import vo.countryVO;
import vo.stateVO;

/**
 * Servlet implementation class UserLoginController
 */
@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginController() {
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
		  
		String flag = request.getParameter("flag");
		if(flag.equals("login"))
		{
			login(request,response);
		}
	}
		private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException 
	{
		PrintWriter out = response.getWriter();
		List Userls = new ArrayList();
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		
		System.out.println(email);

		UserRegisterVO Userlogin = new UserRegisterVO();
		Userlogin.setEmail(email);
		
		UserLoginDAO Userlogindao = new UserLoginDAO();
		Userls = Userlogindao.Userauthentication(Userlogin);
		System.out.println("TESTTESTTEST" + Userls);

		Boolean isUserLsNotNull = Userls != null && Userls.size() > 0;
		if (isUserLsNotNull) {

			HashMap<String, String> map = (HashMap<String, String>) Userls.get(0);
			String strSalt = map.get("salt");
			String Matchpass = map.get("password");
			String firstname = map.get("firstname");
			String Email = map.get("email");
			String Lastname = map.get("lastname");
			Integer id = Integer.parseInt(map.get("id"));
			String role = map.get("role");
			String filePath = map.get("filePath");
			if(filePath == null){
				filePath = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
			}

			System.out.println("Ans strSalt :" + strSalt);
			System.out.println("Ans Matchpass :" + Matchpass);
			System.out.println("Ans Firstname :" + firstname);
			System.out.println("Ans Email :" + Email);
			System.out.println("Your Id :" + id);
			System.out.println("lastname" + Lastname);
			System.out.println("role " + role);
			System.out.println("filePath " + filePath);

			String pass = md5(password + strSalt);
			Userlogin.setPassword(pass);
			System.out.println(pass);
			
			List bloglist= new ArrayList();
			addblogVO blogvo = new addblogVO();
			addblogDAO blogdao = new addblogDAO();
			bloglist=blogdao.searchblogblogvo(blogvo);
			
			 List userlist= new ArrayList();
			 UserRegisterVO vo=new UserRegisterVO();
			 UserRegisterDAO dao=new UserRegisterDAO();
			 userlist = dao.searchSignupUser(vo);
			 
			 
			 List cs= new ArrayList();
			 List statelist,citylist = new ArrayList();
			 countryDAO dao1 = new countryDAO();
			 countryVO countryvo = new countryVO();
			 cs = dao1.searchCountry(countryvo);
			 System.out.println("Country list getting ...." + cs.size());
			 
			 stateVO statevo = new stateVO();
			 statelist = dao1.searchstatelist(statevo);
			 
			 cityVo cityvo = new cityVo();
			 citylist = dao1.seachcitylist(cityvo);
			 
			HttpSession hs = request.getSession();

			String nm = map.get("firstName") + " " + map.get("lastname");
			System.out.println("nsm" + nm);
			hs.setAttribute("fullname", nm);


			Boolean isPassMatches = Matchpass.equals(pass);
			Boolean isEmailMatches = Email.equals(email);

			System.out.println("\nPass   " + isPassMatches + "\n Email   " + isEmailMatches);

			if (isPassMatches && isEmailMatches) {
				
				out.print("Welcome" + nm);
				hs.setAttribute("passmatch", Userls);
				hs.setAttribute("uname", Email);
				hs.setAttribute("name", nm);
				hs.setAttribute("BlogList", bloglist);
				hs.setAttribute("TotalUsers", userlist);
				hs.setAttribute("country", cs);
				 
				
				//response.sendRedirect("user-profile(layout-2).jsp?msg=Welcome" + nm);
				response.sendRedirect("Timeline.jsp?msg=Welcome" + nm);

			} else {
				hs.invalidate();
				request.setAttribute("passnotmatch", "Invalid user or password");
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
				
			}
		} else {
			request.setAttribute("passnotmatch", "Invalid user or password");
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
			
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
