package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclasses.UserDao;
import dtoclasses.UserDto;
@WebServlet("/usersignup")
public class UserDatabaseSaving extends HttpServlet

{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		int id = Integer.parseInt(req.getParameter("userid"));
		String name = req.getParameter("username");
		long contact = Long.parseLong(req.getParameter("usercontact"));
		String email = req.getParameter("useremail");
		String password = req.getParameter("userpassword");
		
		UserDto user = new UserDto();
		user.setUserId(id);
		user.setUserName(name);
		user.setUserContact(contact);
		user.setUserEmail(email);
		user.setUserPassword(password);
		
		UserDao dao = new UserDao();
		
		try {
			dao.saveUser(user);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}	
}
