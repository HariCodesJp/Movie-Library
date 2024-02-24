package daoclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dtoclasses.UserDto;

public class UserDao 

{
	
	//Connection Method
	
		public Connection getConnection() throws ClassNotFoundException, SQLException 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/movielibrary?user=root&password=root");
		}
		
	//To save userdata into database
		
	public int saveUser(UserDto user) throws ClassNotFoundException, SQLException
	{
		
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("insert into usertable values(?,?,?,?,?)");

 		
		pst.setInt(1, user.getUserId());
		pst.setString(2, user.getUserName());
		pst.setLong(3, user.getUserContact());
		pst.setString(4, user.getUserEmail());
		pst.setString(5, user.getUserPassword());
		
		return pst.executeUpdate();
		
	}
	
	//to verify userdata email and password
	
	public UserDto findUserEmail(String useremail) throws ClassNotFoundException, SQLException
	{
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select * from usertable where useremail = ?");
		
		pst.setString(1, useremail);
		ResultSet rs = pst.executeQuery();
		
		UserDto user = null;
		
		if(rs.next())
		{
			user = new UserDto();
			user.setUserId(rs.getInt(1));
			user.setUserName(rs.getString(2));
			user.setUserContact(rs.getLong(3));
			user.setUserEmail(rs.getString(4));
			user.setUserPassword(rs.getString(5));
		}
		return user;
	}
	
	
}
