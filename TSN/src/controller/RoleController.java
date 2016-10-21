package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserRegisterDAO;
import dao.countryDAO;
import vo.UserRegisterVO;
import vo.countryVO;
import vo.stateVO;

/**
 * Servlet implementation class RoleController
 */
@WebServlet("/RoleController")
public class RoleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String flag=request.getParameter("flag");
		if(flag.equals("searchrole"))
		{
			searchrole(request,response);
		}
		else if(flag.equals("searchstate"))
		{
			state(request,response);
		}
		else if(flag.equals("searchcity"))
		{
			city(request,response);
		}
	}

	private void city(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List cityls=new ArrayList();
		int stateid= Integer.parseInt(request.getParameter("state"));
		System.out.println(stateid);
		stateVO statevo = new stateVO();
		statevo.setStateID(stateid);
		
		countryDAO countrydao= new countryDAO();
		cityls=countrydao.searchcitybystateid(statevo);
		
		System.out.println("LIst size of City list on State list      " + cityls.size());
		
		HttpSession session=request.getSession();
		session.setAttribute("citylist", cityls);
		response.sendRedirect("json/loadCity.jsp");
		
	}

	private void state(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List statels=new ArrayList();
		int countryid= Integer.parseInt(request.getParameter("country"));
		System.out.println(countryid);
		countryVO countryvo = new countryVO();
		countryvo.setCountryID(countryid);
		
		countryDAO countrydao= new countryDAO();
		statels=countrydao.searchstatebycountryid(countryvo);
		
		System.out.println("LIst size of state list on country list      " + statels.size());
		
		HttpSession session=request.getSession();
		session.setAttribute("statelist", statels);
		response.sendRedirect("json/loadState.jsp");
		
	}
	
	private void searchrole(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		List rolelist=new ArrayList();
		String role= request.getParameter("role");
		System.out.println("role is :"+role);
		UserRegisterVO vo=new UserRegisterVO();
		vo.setDesignation(role);
		UserRegisterDAO dao=new UserRegisterDAO();
		rolelist=dao.searchrole(vo);
		HttpSession session=request.getSession();
		session.setAttribute("rolelist", rolelist);
		response.sendRedirect("json/loadRole.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");
		if(flag.equals("role"))
		{
			role(request,response);
		}
		
	}
	
	

	private List role(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		List ls=new ArrayList();
		String designation=request.getParameter("role");
		System.out.println(designation);
		UserRegisterVO uservo=new UserRegisterVO();
		uservo.setDesignation(designation);
		
		UserRegisterDAO userdao= new UserRegisterDAO();
		ls=userdao.searchdesignation(uservo);
		UserRegisterVO desg = (UserRegisterVO)ls.get(0);
		String fname=desg.getFirstname();
		String lname=desg.getLastname();
		String name=fname+lname;
		System.out.println("Name from designation :     "+name);
//		HttpSession rolesession = request.getSession();
//		rolesession.setAttribute("rolesession", ls);
		response.sendRedirect("test.jsp");
		return ls;
		
	}

}
