package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UrlEncoder
 */
@WebServlet("/UrlEncoder")
public class UrlEncoder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UrlEncoder() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		encode(request, response);
	}

	private void encode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {

			String url = request.getParameter("url");

			String encodedUrl = URLEncoder.encode(url, "UTF-8");

			System.out.println("Encoded URL " + encodedUrl);

			String decodedUrl = URLDecoder.decode(url, "UTF-8");

			System.out.println("Dncoded URL " + decodedUrl);

			response.sendRedirect(encodedUrl);

		} catch (UnsupportedEncodingException e) {

			System.err.println(e);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
