<%@page import="java.util.Base64"%>
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
<style>

table,th,tr
{
margin-left: auto;
margin-right: auto;
border-collapse: collapse;
border: 1px dotted black;
line-height: 35px;
padding: 10px;    
text-align: center; 
}

h1
{
text-align: center;
}
#link
{
text-align: center;
}

</style>

<body>

<h1>Welcome To Admin Page</h1>

<% List<MovieDto> movies = (List)request.getAttribute("movies"); %>

<table border="3px" >
<tr>
<th>MovieId</th>
<th>MovieName</th>
<th>MovieBudget</th>
<th>MovieRating</th>
<th>MovieGenre</th>
<th>MovieLanguage</th>
<th>MovieImage</th>
<th>Delete</th>
<th>Edit</th>
</tr>

<% for(MovieDto m : movies){%>
<tr>
<td><%= m.getMovieId() %></td>
<td><%= m.getMovieName() %></td>
<td><%= m.getMovieBudget() %></td>
<td><%= m.getMovieRating() %></td>
<td><%= m.getMovieGenre() %></td>
<td><%= m.getMovieLangugae() %></td>

<% String base64images = new String(Base64.getEncoder().encode(m.getMovieImage())); %>
<td> <img src=" data:image/jpeg;base64,<%= base64images %>" height="50px" width="100px"> </td>

<td><a href="deletemovie?id=<%= m.getMovieId() %>">Delete</a></td>
<td><a href="updatemovie?id=<%= m.getMovieId() %>">Edit</a></td>

</tr>
<% } %>
</table>

<a href ="movieinsertion.jsp" class="link">Add Movie</a>

</body>
</html>