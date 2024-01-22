package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		 
		 HttpSession session = req.getSession();
		 String adminname = (String) session.getAttribute("adminname");
		 if(adminname!=null)
		 {
			 MovieDto m = dao.findMovieById(id);
				req.setAttribute("movies", m);
				RequestDispatcher rd = req.getRequestDispatcher("movieedit.jsp");
				rd.include(req, resp); 
		 }
		 else
			 
		 {
			 req.setAttribute("message", "Access Denied Admin Login Required");
				RequestDispatcher rd = req.getRequestDispatcher("adminsignin.jsp");
				rd.include(req, resp);
		 }
		
		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
}
}
