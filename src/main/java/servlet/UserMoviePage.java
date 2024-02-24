package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import daoclasses.MovieDao;

@WebServlet("/")
@MultipartConfig(maxFileSize = 20 *1024 *1024)
public class UserMoviePage extends HttpServlet

{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	
	{
	
		
		MovieDao dao = new MovieDao();
		
		try {
			req.setAttribute("movies", dao.getAllMovies());
			RequestDispatcher rd = req.getRequestDispatcher("userinterface.jsp");
			rd.include(req, resp);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
