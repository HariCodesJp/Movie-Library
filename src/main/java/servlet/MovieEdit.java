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
import dtoclasses.MovieDto;

@WebServlet("/updatemovie")
public class MovieEdit extends HttpServlet

{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 

{
	int id = Integer.parseInt(req.getParameter("id"))	;
	 
	 MovieDao dao = new MovieDao();
	 
	 try {
		 
		MovieDto m = dao.findMovieById(id);
		req.setAttribute("movies", m);
		RequestDispatcher rd = req.getRequestDispatcher("movieedit.jsp");
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
