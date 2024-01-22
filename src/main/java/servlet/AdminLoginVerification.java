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
import javax.servlet.http.HttpSession;

import daoclasses.*;

import dtoclasses.AdminDto;
@WebServlet("/adminsignin")
public class AdminLoginVerification extends HttpServlet

{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
		
		{
			
			String email = req.getParameter("adminemail");
			String password = req.getParameter("adminpassword");
			
			AdminDao dao = new AdminDao();
			MovieDao dao1 = new MovieDao();
			
			
			try {
				 AdminDto admin =dao.findByAdminEmail(email);
				 if(admin!=null)
				 {
					 if(admin.getAdminPassword().equals(password))
					 {
						 HttpSession session = req.getSession();
						 session.setAttribute( "adminname", admin.getAdminName());
						
						 req.setAttribute("movies", dao1.getAllMovies());
						 RequestDispatcher rd = req.getRequestDispatcher("admininterface.jsp");
						 rd.include(req, resp);
					 }
					 else
					 {
						 req.setAttribute("message", "Password is Wrong");
						 RequestDispatcher rd = req.getRequestDispatcher("adminsignin.jsp");
						 rd.include(req, resp);
					 }
				 }
				 else
				 {
					 req.setAttribute("message", "Email is Wrong");
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
