package urlencode;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlEncode {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		encode(request,response);
	}

	 private void encode(HttpServletRequest request, HttpServletResponse response) throws IOException 
	 {

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

	

}
