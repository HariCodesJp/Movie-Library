package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclasses.MovieDao;

@WebServlet("/buymovie")
public class MovieBuy extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		MovieDao dao = new MovieDao();
		 try {
			boolean success = dao.buyMovie(id, id);
			if(success)
			{
				req.setAttribute("movies", dao.getAllMovies());
				RequestDispatcher rd = req.getRequestDispatcher("userinterface.jsp");
				rd.include(req, resp);
			}
			else
			{
				req.setAttribute("message", "Something Went Wrong Please Try Again Later");
				RequestDispatcher rd = req.getRequestDispatcher("moviebuyerror.jsp");
				rd.include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
