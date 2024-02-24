package dtoclasses;

import java.util.Arrays;

public class MovieDto 
{

	private int movieId;
	private String movieName;
	private double movieBudget;
	private double movieRating;
	private String movieGenre;
	private String movieLangugae;
	private byte[] movieImage;
	private boolean moviePurchase;
	
	public byte[] getMovieImage() {
		return movieImage;
	}
	public void setMovieImage(byte[] movieImage) {
		this.movieImage = movieImage;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public double getMovieBudget() {
		return movieBudget;
	}
	public void setMovieBudget(double movieBudget) {
		this.movieBudget = movieBudget;
	}
	public double getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(double movieRating) {
		this.movieRating = movieRating;
	}
	public String getMovieGenre() {
		return movieGenre;
	}
	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}
	public String getMovieLangugae() {
		return movieLangugae;
	}
	public void setMovieLangugae(String movieLangugae) {
		this.movieLangugae = movieLangugae;
	}
	
	public boolean isMoviePurchase() {
		return moviePurchase;
	}
	public void setMoviePurchase(boolean moviePurchase) {
		this.moviePurchase = moviePurchase;
	}
	
	@Override
	public String toString() {
		return "MovieDto [movieId=" + movieId + ", movieName=" + movieName + ", movieBudget=" + movieBudget
				+ ", movieRating=" + movieRating + ", movieGenre=" + movieGenre + ", movieLangugae=" + movieLangugae
				+ ", movieImage=" + Arrays.toString(movieImage) + ", moviePurchase=" + moviePurchase + "]";
	}
	
	
	
}
