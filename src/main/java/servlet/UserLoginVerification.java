package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclasses.UserDao;
import dtoclasses.UserDto;

@WebServlet("/usersignin")
public class UserLoginVerification extends HttpServlet

{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("useremail");
		String password = req.getParameter("userpassword");
		
		UserDao dao = new UserDao();
		
		try {
			
			
			UserDto user = dao.findUserEmail(email);
			if(user!=null)
			{
				if(user.getUserPassword().equals(password))
				{
					RequestDispatcher rd = req.getRequestDispatcher("userinterface.jsp");
					rd.include(req, resp);
				}
				else
				{
					req.setAttribute("message", "Password is Wrong");
					RequestDispatcher rd = req.getRequestDispatcher("usersignin.jsp");
					rd.include(req, resp);
				}
			}
			else
			{
				req.setAttribute("message", "Email is Wrong");
				RequestDispatcher rd = req.getRequestDispatcher("usersignin.jsp");
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
