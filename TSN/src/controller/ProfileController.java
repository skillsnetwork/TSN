package controller;

import java.io.*;
import java.util.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

import dao.ProfileDAO;
import dao.UserRegisterDAO;
import dao.addblogDAO;
import dao.seminarDAO;
import vo.ProfileVO;
import vo.UserRegisterVO;
import vo.addblogVO;
import vo.seminarVO;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if(flag.equals("searchseminar"))
		{
			searchseminar(request, response);
		}
	}

	private void searchseminar(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		List seminarlist = new ArrayList();
		seminarVO seminarvo = new seminarVO();
		seminarDAO seminardao = new seminarDAO();
		seminarlist=seminardao.searchsemianr(seminarvo);
		
		System.out.println("list of seminar  " + seminarlist.size());
		
		HttpSession snseminarlist = request.getSession();
		snseminarlist.setAttribute("snseminarlist", seminarlist);
		response.sendRedirect("viewseminar.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if (flag.equals("update")) {
			changefname(request, response);
		} else if (flag.equals("addblog")) {
			addblog(request, response);
		} else if (flag.equals("UploadPhoto")) {
			UploadPhoto(request, response);
		} else if (flag.equals("popup")) {
			popup(request, response);
		} else if (flag.equals("CreateSeminar")) {
			CreateSeminar(request, response);
		}

	}

	private void CreateSeminar(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String seminarname = request.getParameter("tsnseminarname");
		System.out.println(seminarname);
		String subject = request.getParameter("tsnsubject");
		System.out.println(subject);
		String description = request.getParameter("tsndesciption");
		System.out.println(description);
		String deliveredrole = request.getParameter("tsndesignation");
		System.out.println("Deliver Role.... "+ deliveredrole);
		int deliveredid = Integer.parseInt(request.getParameter("tsndeliverby"));
		System.out.println("Deliver ID.... " + deliveredid);
		String date = request.getParameter("tsndate");
		System.out.println("Date is .... " + date);
		String time = request.getParameter("tsntime");
	     System.out.println("Time is .... " +time);
		String venue = request.getParameter("tsnnearplace");
		System.out.println("Venue is .... " + venue);
		int countryid = Integer.parseInt(request.getParameter("tsncountry"));
		System.out.println("CountryID is .... " + countryid);
		int stateid = Integer.parseInt(request.getParameter("tsnstate"));
		System.out.println("StateID is .... " + stateid);
		int cityid = Integer.parseInt(request.getParameter("tsncity"));
		System.out.println("CityID is .... " + cityid);
		int seminaroption = Integer.parseInt(request.getParameter("tsnoption"));
		System.out.println("SeminarOption is .... " + seminaroption);
		String currency = request.getParameter("tsncurrency");
		System.out.println("Currency is .... " + currency);
		int fees;
		if (seminaroption == 1) {
			 fees = Integer.parseInt(request.getParameter("tsnfee"));
		} else {
			fees = 0;
		}
		System.out.println("Fees is .... " + fees);
		int manageby = Integer.parseInt(request.getParameter("tsnuserid"));
		System.out.println("ManageBy is .... " + manageby);
		// String seminartype = request.getParameter("");
		// String attendedby = request.getParameter("");
		// String rating = request.getParameter("");
		// String verify = request.getParameter("");

		seminarVO seminarvo = new seminarVO();
		seminarvo.setSeminarname(seminarname);
		seminarvo.setSubject(subject);
		seminarvo.setDescription(description);
		seminarvo.setDeliveredrole(deliveredrole);
		seminarvo.setDeliveredid(deliveredid);
		seminarvo.setDate(date);
		seminarvo.setTime(time);
		seminarvo.setVenue(venue);
		seminarvo.setCountryid(countryid);
		seminarvo.setStateid(stateid);
		seminarvo.setCityid(cityid);
		seminarvo.setSeminaroption(seminaroption);
		seminarvo.setCurrency(currency);
		seminarvo.setFees(fees);
		seminarvo.setManageby(manageby);

		seminarDAO seminardao = new seminarDAO();
		seminardao.createSeminar(seminarvo);
		System.out.println("inserted seminar details..........");
		response.sendRedirect("seminar.jsp");

	}

	private void popup(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private boolean isMultipart;
	private String filePath;
	private int maxFileSize = 50 * 1024;
	private int maxMemSize = 4 * 1024;
	private File file;

	public void init() {
		// Get the file location where it would be stored.
		String relativeWebPath = "/file-upload/";
		filePath = getServletContext().getRealPath(relativeWebPath);
		// filePath =
		// getServletContext().getInitParameter("file-upload");
	}

	private void UploadPhoto(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int id = Integer.parseInt(request.getParameter("ID"));
		System.out.println("On image upload event....... " + id);

		// Check that we have a file upload request
		isMultipart = ServletFileUpload.isMultipartContent(request);
		response.setContentType("text/html");
		java.io.PrintWriter out = response.getWriter();
		if (!isMultipart) {
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet upload</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<p>No file uploaded</p>");
			out.println("</body>");
			out.println("</html>");
			return;
		}

		DiskFileItemFactory factory = new DiskFileItemFactory();

		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);

		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File("D:\\NILAY"));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// maximum file size to be uploaded.
		upload.setSizeMax(maxFileSize);

		try {
			// Parse the request to get file items.
			List fileItems = upload.parseRequest(request);

			// Process the uploaded file items
			Iterator i = fileItems.iterator();

			// System.out.println(filePath);

			// String filePath =
			// "D:\\NILAY/workspace/SkillsNetwork/WebContent/file-upload/";
			// out.println("<html>");
			// out.println("<head>");
			// out.println("<title>Servlet upload</title>");
			// out.println("</head>");
			// out.println("<body>");
			// out.println("Uploaded if Filename: " + "<br>");
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				if (!fi.isFormField()) {
					// Get the uploaded file parameters
					String fieldName = fi.getFieldName();
					String fileName = fi.getName();
					String contentType = fi.getContentType();
					boolean isInMemory = fi.isInMemory();
					long sizeInBytes = fi.getSize();

					// out.println("Uploaded if Filename: " + sizeInBytes +
					// "<br>");

					// Write the file
					if (fileName.lastIndexOf("\\") >= 0) {
						file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
						// out.println("Uploaded if Filename: " + file +
						// "<br>");
					} else {
						file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
						// out.println("Uploaded else Filename: " + filePath +
						// "<br>");
						// out.println("Uploaded else Filename: " + file +
						// "<br>");
					}
					fi.write(file);
					String uri = request.getScheme() + "://" + request.getServerName()
							+ ("http".equals(request.getScheme()) && request.getServerPort() == 80
									|| "https".equals(request.getScheme()) && request.getServerPort() == 443 ? ""
											: ":" + request.getServerPort());
					// System.out.println(uri);
					String fpath = uri + "/TheSkillsNetworks/file-upload/" + fileName;
					UserRegisterVO uploadvo = new UserRegisterVO();
					uploadvo.setid(id);
					uploadvo.setFilePath(fpath);

					List profilelist = new ArrayList();

					ProfileDAO updatedao = new ProfileDAO();
					updatedao.updateprofile(uploadvo);
					/* profilelist= updatedao.searchprofile(uploadvo); */
					UserRegisterVO pro = new UserRegisterVO();

					pro.setid(id);
					UserRegisterDAO propic = new UserRegisterDAO();
					profilelist = propic.searchprofile(uploadvo);
					UserRegisterVO profile = (UserRegisterVO) profilelist.get(0);
					profile.getFirstname();
					System.out.println("Before passmatch firstname        " + profile.getFirstname());
					HttpSession snprofile = request.getSession();
					snprofile.setAttribute("passmatch", profilelist);
					// response.sendRedirect("user-profile(layout-2).jsp");

					// out.println("Uploaded Filename: " + fileName + "<br>");
				}
			}

			response.sendRedirect("user-profile(layout-2).jsp");
			// out.println("</body>");
			// out.println("</html>");
		} catch (Exception ex) {
			System.out.println(ex);
		}

	}

	private void addblog(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("ID"));
		System.out.println("isdofoidjs " + id);
		String tasktitle = request.getParameter("tasktitle");
		String taskdescription = request.getParameter("taskdescription");
		String duedate = request.getParameter("duedate");
		String place = request.getParameter("place");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");

		System.out.println("Full name from add blog    " + firstname);
		System.out.println("Full name from add blog    " + lastname);
		System.out.println("Email from add blog    " + email);

		System.out.println("tsak   " + tasktitle);
		System.out.println("description    " + taskdescription);
		System.out.println("duedate     " + duedate);
		System.out.println("place    " + place);

		addblogVO blogvo = new addblogVO();
		blogvo.setId(id);
		blogvo.setTasktitle(tasktitle);
		blogvo.setTaskdescription(taskdescription);
		blogvo.setDuedate(duedate);
		blogvo.setPlace(place);
		blogvo.setFirstname(firstname);
		blogvo.setLastname(lastname);
		blogvo.setEmail(email);

		List bloglist = new ArrayList();

		addblogDAO blogdao = new addblogDAO();
		/* blogdao.addBlog(blogvo); */
		blogdao.insertblog(blogvo);
		bloglist = blogdao.searchblogblogvo(blogvo);

		HttpSession bloghs = request.getSession();
		bloghs.setAttribute("BlogList", bloglist);

		System.out.println("ans is inserted   ");
		System.out.println("blog post size   " + bloglist.size());
		response.sendRedirect("user-profile(layout-2).jsp");
	}

	private void changefname(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String firstname = request.getParameter("Hdnfirstname");
		int userprofileid = Integer.parseInt(request.getParameter("ID"));
		String lastname = request.getParameter("Hdnlastname");
		String compnayname = request.getParameter("HdncompanyName");

		ProfileVO vo = new ProfileVO();
		vo.setFirstname(firstname);
		vo.setUserprofileid(userprofileid);
		vo.setLastname(lastname);
		vo.setCompnayname(compnayname);

		ProfileDAO dao = new ProfileDAO();
		dao.insertuserdetails(vo);

		System.out.println("your data" + dao);

		response.sendRedirect("Timeline.jsp");

	}

}
