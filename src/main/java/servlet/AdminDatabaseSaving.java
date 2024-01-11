package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclasses.AdminDao;
import dtoclasses.AdminDto;

@WebServlet("/adminsignup")
public class AdminDatabaseSaving extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	
	{
		int id = Integer.parseInt(req.getParameter("adminid"));
		String name = req.getParameter("adminname");
		long contact = Long.parseLong(req.getParameter("admincontact"));
		String email = req.getParameter("adminemail");
		String password = req.getParameter("adminpassword");
		
		
		AdminDto admin = new AdminDto();
		admin.setAdminId(id);
		admin.setAdminName(name);
		admin.setAdminContact(contact);
		admin.setAdminEmail(email);
		admin.setAdminPassword(password);
		
		AdminDao dao = new AdminDao();
		{
			try {
				
				
				int res = dao.saveAdmin(admin);
				if(res>0)
				{
					
					RequestDispatcher rd = req.getRequestDispatcher("adminsignin.jsp");
					rd.include(req, resp);
				}
				else
				{
					RequestDispatcher rDispatcher = req.getRequestDispatcher("adminsignup.jsp");
					rDispatcher.include(req, resp);
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
	
}
