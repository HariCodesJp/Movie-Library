package daoclasses;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import dtoclasses.MovieDto;

public class MovieDao 
{

//Connection Method
	
		public Connection getConnection() throws ClassNotFoundException, SQLException 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/movielibrary?user=root&password=root");
		}
		
		
//To Save movie deatils into database
		
		public int saveMovie(MovieDto movie) throws ClassNotFoundException, SQLException
		{
			
			Connection conn = getConnection();
			PreparedStatement pst = conn.prepareStatement("insert into movietable values(?,?,?,?,?,?,?)");
			
			pst.setInt(1, movie.getMovieId());
			pst.setString(2, movie.getMovieName());
			pst.setDouble(3, movie.getMovieBudget());
			pst.setDouble(4, movie.getMovieRating());
			pst.setString(5, movie.getMovieGenre());
			pst.setString(6, movie.getMovieLangugae());
			
//We are converting an image file which is an byte array in the movie dto and now converting it into an blob datatype
			Blob image = new SerialBlob(movie.getMovieImage());
			pst.setBlob(7, image);
			
			return pst.executeUpdate();
			
		}
		
		//To Display All Details in the Movie Home
		
		public List<MovieDto> getAllMovies() throws ClassNotFoundException, SQLException
		
		{
			Connection conn = getConnection();
			PreparedStatement pst = conn.prepareStatement("select * from movietable");
			
			ResultSet rs = pst.executeQuery();
			
			List<MovieDto> movies = new ArrayList<MovieDto>();
			while(rs.next())
			{
				MovieDto m = new MovieDto();
				
				m.setMovieId(rs.getInt(1));
				m.setMovieName(rs.getString(2));
				m.setMovieBudget(rs.getDouble(3));
				m.setMovieRating(rs.getDouble(4));
				m.setMovieGenre(rs.getString(5));
				m.setMovieLangugae(rs.getString(6));
				
				Blob b = rs.getBlob(7);
				byte[] image = b.getBytes(1, (int)b.length());
				m.setMovieImage(image);
				
				movies.add(m);
			}
			
			return movies;
			
		}
		
		public int deleteMovie( int id) throws ClassNotFoundException, SQLException
		{
			
			Connection conn = getConnection();
			PreparedStatement pst = conn.prepareStatement("delete from movietable where movieid =?");
			
	
			
			 pst.setInt(1,id);
			return pst.executeUpdate();
	
			
		}
		
		public MovieDto findMovieById(int movieid) throws ClassNotFoundException, SQLException
		{
			
			Connection conn = getConnection();
			PreparedStatement pst = conn.prepareStatement("select * from movietable where movieid =?");
			
			pst.setInt(1, movieid);
			
			ResultSet rs = pst.executeQuery();
			rs.next();
			
			MovieDto m = new MovieDto();
			
			m.setMovieId(rs.getInt(1));
			m.setMovieName(rs.getString(2));
			m.setMovieBudget(rs.getDouble(3));
			m.setMovieRating(rs.getDouble(4));
			m.setMovieGenre(rs.getString(5));
			m.setMovieLangugae(rs.getString(6));
			
			Blob b = rs.getBlob(7);
			byte[] image = b.getBytes(1, (int)b.length());
			m.setMovieImage(image);
			
			return m;
			
		}
		
		public int updateMovie(MovieDto movie) throws ClassNotFoundException, SQLException
		{
			
			Connection conn = getConnection();
			PreparedStatement pst = conn.prepareStatement("update movietable set moviename=?,moviebudget=?,movierating=?,moviegenre=?,movielanguage=?,movieimage=? where movieid=?");
			
			pst.setInt(7, movie.getMovieId());
			pst.setString(1, movie.getMovieName());
			pst.setDouble(2, movie.getMovieBudget());
			pst.setDouble(3, movie.getMovieRating());
			pst.setString(4, movie.getMovieGenre());
			pst.setString(5, movie.getMovieLangugae());
			Blob image = new SerialBlob(movie.getMovieImage());
			pst.setBlob(6, image);
			
			return pst.executeUpdate();
			
		}
		
}

