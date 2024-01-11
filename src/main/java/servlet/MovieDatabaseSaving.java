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
import javax.servlet.http.Part;

import daoclasses.AdminDao;
import daoclasses.MovieDao;
import dtoclasses.MovieDto;

@WebServlet("/movieinsertion")
@MultipartConfig(maxFileSize = 20 *1024 *1024)
public class MovieDatabaseSaving extends HttpServlet

{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	
	{
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		String moviename = req.getParameter("moviename");
		double moviebudget = Double.parseDouble(req.getParameter("moviebudget"));
		double movierating = Double.parseDouble(req.getParameter("movierating"));
		String moviegenre = req.getParameter("moviegenre");
		String movielanguage = req.getParameter("movielanguage");
		Part imagepart = req.getPart("movieimage");
		
		MovieDto movie = new MovieDto();
		movie.setMovieId(movieid);
		movie.setMovieName(moviename);
		movie.setMovieBudget(moviebudget);
		movie.setMovieRating(movierating);
		movie.setMovieGenre(moviegenre);
		movie.setMovieLangugae(movielanguage);
		movie.setMovieImage(imagepart.getInputStream().readAllBytes());
		
		MovieDao dao = new MovieDao();
		
		try {
			dao.saveMovie(movie);
			req.setAttribute("movies", dao.getAllMovies());
			RequestDispatcher rd = req.getRequestDispatcher("admininterface.jsp");
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
