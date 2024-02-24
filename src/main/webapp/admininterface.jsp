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
*
{
    margin: 0;
    padding: 0;
}
body
{
    
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    padding: 120px 0px;
}
table,th,tr
{
margin-left: auto;
margin-right: auto;
border-collapse: collapse;
border: 1px solid black;
line-height: 35px;
padding: 10px 30px;    
text-align: center; 
background-color: rgba(0, 0, 0, 0.504);
border-color: #fff;
color: #fff;
margin-top: 20px;
}
h1
{
text-align: center;
}
#link
{
text-align: center;
}
.first
{
    margin-top: -100px;
}
.second
{
    text-align: center;
    margin-top: 50px;
}
a
{
text-decoration: none;
color: #fff;
}
.second a
{
border: 1px solid black;
padding: 8px 25px;
font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
color: #fff;
background-color: black;
border-radius: 40px;
}
.second a:hover
{
    background-color: #fff;
    color: black;
}
.back-video
{
    position: absolute;
    right: 0;
    bottom: 0;
    z-index: -1;
}
@media(min-aspect-ratio: 16/9)
{
    .back-video
    {
        width: 100%;
        height: auto;
    }
}
@media(max-aspect-ratio: 16/9)
{
    .back-video
    {
        width: auto;
        height: 100%;
    }
}
</style>

<body>
    <div class="video">
        <video src="sukuna.mp4" loop autoplay plays-inline muted class="back-video"></video>
    </div>
<div class="first">
    
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
</div>
<div class="second">
<a href ="movieinsertion.jsp" class="link" >Add Movie</a>
<a href ="logout" class="link">Log Out</a>
</div>
</body>
</html>