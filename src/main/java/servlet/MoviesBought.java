package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclasses.MovieDao;
import dtoclasses.MovieDto;

@WebServlet("/purchasedmovies")
public class MoviesBought extends HttpServlet 
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		MovieDao dao = new MovieDao();
try {
	List<MovieDto> purchasedMovie = dao.purchasedMovies(movieid);
	req.setAttribute("message", purchasedMovie);
	RequestDispatcher rDispatcher = req.getRequestDispatcher("purchasedmovies.jsp");
	rDispatcher.include(req, resp);
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	}
}
