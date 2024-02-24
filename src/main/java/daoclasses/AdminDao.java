package daoclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import dtoclasses.AdminDto;

public class AdminDao 

{
	//Connection Method
	
	public Connection getConnection() throws ClassNotFoundException, SQLException 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/movielibrary?user=root&password=root");
	}
	
	//To Insert Admin Signup Page Into DataBAse
	
	public int saveAdmin(AdminDto admin) throws SQLException, ClassNotFoundException
	{
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("insert into admintable values(?,?,?,?,?)");
		
		pst.setInt(1, admin.getAdminId());
		pst.setString(2, admin.getAdminName());
		pst.setLong(3, admin.getAdminContact());
		pst.setString(4, admin.getAdminEmail());
		pst.setString(5, admin.getAdminPassword());
		
		return pst.executeUpdate();
	 }
	
	//To verify password and email
	
	public AdminDto findByAdminEmail(String adminemail) throws ClassNotFoundException, SQLException
	{
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select * from admintable where adminemail = ?");
		
		pst.setString(1, adminemail);
		ResultSet rs = pst.executeQuery();
		
		AdminDto admin  = null;
		
		if(rs.next()){
		admin = new AdminDto();
		admin.setAdminId(rs.getInt(1));
		admin.setAdminName(rs.getString(2));
		admin.setAdminContact(rs.getLong(3));
		admin.setAdminEmail(rs.getString(4));
		admin.setAdminPassword(rs.getString(5));
		}
		return admin;
		
	}
	
	
	
 
	
}
