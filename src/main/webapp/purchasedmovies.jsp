<%@page import="dtoclasses.MovieDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h1>Watch Purchased Movies</h1>
<% List<MovieDto> movies = (List)request.getAttribute("message"); %>
<table border="3px" >
<tr>
<th>MovieId</th>
<th>MovieName</th>
<th>MovieBudget</th>
<th>MovieRating</th>
<th>MovieGenre</th>
<th>MovieLanguage</th>
</tr>

<% for(MovieDto m : movies) {%>


<tr>
<td><%= m.getMovieId() %></td>
<td><%= m.getMovieName() %></td>
<td><%= m.getMovieBudget() %></td>
<td><%= m.getMovieRating() %></td>
<td><%= m.getMovieGenre() %></td>
<td><%= m.getMovieLangugae() %></td>
</tr>
 
<%}%>

</table>
</body>
</html>